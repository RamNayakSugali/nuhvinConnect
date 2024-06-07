import 'dart:convert';
import 'dart:io';

import 'package:nuhvinconnect/untils/export_file.dart';

class StartTimer extends StatefulWidget {
  const StartTimer({super.key});

  @override
  State<StartTimer> createState() => _StartTimerState();
}

class _StartTimerState extends State<StartTimer> {
  final List<String> projects = [
    'HR APP',
    'Nuhvin Bllod Bank',
    'Woman Rapido',
  ];
  String? selectedValue;
  String? selectedProjectValue;
  //image
  bool showimagenullMessage = false;
  //////////////////////////////
  File? selectedImage;
  File? selectedImagetwo;
  String base64Image = "";
  // bool isLoading = false;
  Map typesData = {};
  List<String> options = [];
  int choosenTypeData = 0;
  String choosenOption = "";

  String description = "";
  int? totalAmount;
  String? str;
  Future<void> chooseImage(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
        imageQuality: 10,
      );
      // .pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker()
          //.pickImage(source: ImageSource.gallery);
          .pickImage(source: ImageSource.gallery, imageQuality: 10);
      //  .pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());
        print(selectedImage!.readAsBytesSync().lengthInBytes);
        final kb = selectedImage!.readAsBytesSync().lengthInBytes / 1024;
        print(kb);
        final mb = kb / 1024;
        print(mb);
        print("ram b jk dslnkv flk dlkcdslc k");
        showimagenullMessage = false;
      });
//       Future getImageSize() async {
// // final pickedImage = await picker.getImage(source: ImageSource.gallery);
//         final bytes = selectedImage!.readAsBytesSync().lengthInBytes;
//         final kb = bytes / 1024;
//         final mb = kb / 1024;
//         print("Below kilo bytes,...........................................");
//         print(kb);
//       }
      // var value = await Services.profileimage(File(image.path));
      // if (jsonDecode(value["msg"]) != null) {
      //   Fluttertoast.showToast(msg: value["msg"]);
      // } else {
      //   // Get.toNamed(Kapply_leaves);
      // }
    }
  }

  /////////////////
  Future<void> chooseImagetwo(type) async {
    // ignore: prefer_typing_uninitialized_variables
    var image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
        imageQuality: 10,
      );
      // .pickImage(source: ImageSource.camera, imageQuality: 10);
    } else {
      image = await ImagePicker()
          //.pickImage(source: ImageSource.gallery);
          .pickImage(source: ImageSource.gallery, imageQuality: 10);
      //  .pickImage(source: ImageSource.gallery, imageQuality: 25);
    }
    if (image != null) {
      setState(() {
        selectedImagetwo = File(image.path);
        base64Image = base64Encode(selectedImagetwo!.readAsBytesSync());
        print(selectedImagetwo!.readAsBytesSync().lengthInBytes);
        final kb = selectedImagetwo!.readAsBytesSync().lengthInBytes / 1024;
        print(kb);
        final mb = kb / 1024;
        print(mb);
        print("ram b jk dslnkv flk dlkcdslc k");
        showimagenullMessage = false;
      });
//       Future getImageSize() async {
// // final pickedImage = await picker.getImage(source: ImageSource.gallery);
//         final bytes = selectedImage!.readAsBytesSync().lengthInBytes;
//         final kb = bytes / 1024;
//         final mb = kb / 1024;
//         print("Below kilo bytes,...........................................");
//         print(kb);
//       }
      // var value = await Services.profileimage(File(image.path));
      // if (jsonDecode(value["msg"]) != null) {
      //   Fluttertoast.showToast(msg: value["msg"]);
      // } else {
      //   // Get.toNamed(Kapply_leaves);
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Kwhite,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, size: 25.sp, color: KdarkText),
        ),
        title: Text(
          "Start Timer",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.r),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Select Project",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: kFourteenFont,
                      //  letterSpacing: 1,
                      color: KText,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Kwhite,
                    boxShadow: [
                      BoxShadow(
                        color: kblack.withOpacity(0.2),
                        blurRadius: 0.5,
                        offset: Offset(1, 1),
                        spreadRadius: 0.5,
                      )
                      // BoxShadow(
                      //   color: Color(0x3FD3D1D8),
                      //   blurRadius: 30,
                      //   offset: Offset(15, 15),
                      //   spreadRadius: 2,
                      // )
                    ]),
                child: DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kOrange, width: 1),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kOrange, width: 1),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  hint: Text(
                    'Project',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: KTextgery.withOpacity(0.5),
                    ),
                  ),
                  items: projects
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select Project';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      selectedProjectValue = value.toString();
                    });

                    // authentication.registerDonorBloodController.value =
                    //     selectedValue as TextEditingValue;
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    selectedProjectValue = value.toString();

                    // authentication.registerDonorBloodController.value =
                    //     selectedValue as TextEditingValue;
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: kblack.withOpacity(0.6),
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomFormFields(
                enabled: true,
                labelColor: KText,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: kFourteenFont,
                fontWeight: FontWeight.w500,
                hintText: "Enter place",
                maxLines: 1,
                readOnly: false,
                label: 'Where are you working on? ',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter place';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Ktextcolor.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: selectedImage != null
                    ? Image.file(
                        selectedImage!,
                        fit: BoxFit.cover,
                        height: 130.h,
                        width: double.infinity,
                      )
                    : const Text(
                        "",
                        textAlign: TextAlign.center,
                      ),
              ),
              SizedBox(
                height: 5.h,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                      ),
                      backgroundColor: Kbackground,
                      context: context,
                      builder: (context) {
                        return Container(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Kbackground,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            height: 100.h,
                            padding: EdgeInsets.only(top: 20.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    chooseImage("Gallery");
                                    Navigator.pop(context);
                                  },
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.image_outlined,
                                        color: kOrange,
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text('Gallery',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                              fontSize: 12.sp,
                                              fontWeight: kFW700,
                                              color: KdarkText)),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    chooseImage("camera");
                                    Navigator.pop(context);
                                  },
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        color: kOrange,
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text('camera',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                              fontSize: 12.sp,
                                              fontWeight: kFW700,
                                              color: KdarkText)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: DottedBorder(
                    dashPattern: [8, 2],
                    strokeWidth: 1,
                    color: kOrange,
                    child: Container(
                      height: 35.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: Kwhite,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Upload photo",
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                color: kOrange,
                                fontWeight: kFW600),
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 120.h,
              ),
              CustomButton(
                  borderRadius: BorderRadius.circular(30.r),
                  Color: kOrange,
                  textColor: Kwhite,
                  height: 42.h,
                  width: double.infinity,
                  label: "Start",
                  fontSize: kSixteenFont,
                  fontWeight: kFW500,
                  isLoading: false,
                  onTap: () {
                    Get.back();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
