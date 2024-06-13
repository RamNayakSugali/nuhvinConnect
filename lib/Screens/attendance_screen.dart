import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart' as Geocoding;

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  late GoogleMapController mapController;
  final LatLng _initialCenter = const LatLng(45.521563, -122.677433);
  LatLng _currentPosition = const LatLng(45.521563, -122.677433);
  bool _isLoading = false;
  String _placeDescription = "";
  DateTime? _checkInTime;
  DateTime? _checkOutTime;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> _getCurrentLocation() async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();

    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();

      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();

    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      print("Requested location permission: $_permissionGranted");
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    print(
        "Location fetched successfully: ${_locationData.latitude}, ${_locationData.longitude}");
    _currentPosition =
        LatLng(_locationData.latitude!, _locationData.longitude!);

    mapController.animateCamera(
      CameraUpdate.newLatLng(_currentPosition),
    );

    try {
      List<Geocoding.Placemark> placemarks =
          await Geocoding.placemarkFromCoordinates(
              _currentPosition.latitude, _currentPosition.longitude);
      if (placemarks.isNotEmpty) {
        setState(() {
          _placeDescription =
              '${placemarks.first.name}, ${placemarks.first.locality}, ${placemarks.first.postalCode}';
          _isLoading = false;
        });
      } else {
        setState(() {
          _placeDescription = "Location not found";
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _placeDescription = "Error fetching location";
        _isLoading = false;
      });
    }
  }

  void _checkInOut() {
    setState(() {
      if (_checkInTime == null) {
        _checkInTime = DateTime.now();
      } else {
        _checkOutTime = DateTime.now();
      }
    });
  }

  String _formatTime(DateTime? time) {
    if (time != null) {
      return DateFormat('hh:mm a').format(time);
    }
    return '';
  }

  String _calculateTotalTime() {
    if (_checkInTime != null && _checkOutTime != null) {
      Duration difference = _checkOutTime!.difference(_checkInTime!);
      int hours = difference.inHours;
      int minutes = difference.inMinutes.remainder(60);
      return '$hours h $minutes min';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, size: 25, color: Colors.black),
        ),
        title: Text(
          "Attendance",
          style: GoogleFonts.roboto(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _initialCenter,
                zoom: 11.0,
              ),
              markers: {
                Marker(
                  markerId: MarkerId('currentLocation'),
                  position: _currentPosition,
                ),
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, -1),
                    blurRadius: 10,
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "07 JUN | MONDAY | GENERAL",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            _isLoading = true;
                          });
                          await _getCurrentLocation();
                          _checkInOut();
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          child: _isLoading
                              ? CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text(
                                  _checkInTime != null
                                      ? "Check out"
                                      : "Check in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  SizedBox(height: 4),
                  Text(
                    _placeDescription,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _formatTime(_checkInTime),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (_checkInTime != null)
                    Text(
                      'Check out time: ${_formatTime(_checkOutTime)}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  if (_checkInTime != null && _checkOutTime != null)
                    Text(
                      'Total time: ${_calculateTotalTime()}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
