import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({super.key});

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  final List<String> Types = [
    'Sick Leave',
    'Casual Leave',
    'Paid Leave',
  ];
  final List<String> projects = [
    'E Commerce',
    'Hotel App',
    'Devastanam app',
  ];

  final List<String> tasks = [
    'Design',
    'Api Integration',
    'Deployment',
  ];

  String? selectedValue;
  String? selectedGenderValue;
  String? selectedProjectvalue;
  String? selectedTaskvalue;
  List days = [
    {
      "title": "Custom",
      // "subtitle":
      //     "World Blood Donor Day is held on June 14 each year. The event was organised for the first time in 2004, by four core international organizations: the World Health Organization,",
      // "image": "assets/images/feeds1.jpg",
    },
    {
      "title": "This week",
      // "subtitle":
      //     "reduce stress ,improve your emotional well-being ,help get rid of negative feelings",
      // "image": "assets/images/feeds2.jpg",
    },
    {
      "title": "This week",
      // "subtitle":
      //     "Donating blood is healthy as it allows your body to renew the blood within a few weeks",
      // "image": "assets/images/feeds3.png",
    },
    {
      "title": "Last month",
      // "subtitle":
      //     "Donating blood is healthy as it allows your body to renew the blood within a few weeks",
      // "image": "assets/images/feeds3.png",
    },
    {
      "title": "This month",
      // "subtitle":
      //     "Donating blood is healthy as it allows your body to renew the blood within a few weeks",
      // "image": "assets/images/feeds3.png",
    },
  ];
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
          "Apply Leave",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
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
                    'Leave Type',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: KTextgery.withOpacity(0.5),
                    ),
                  ),
                  items: Types.map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                          ),
                        ),
                      )).toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select Gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      selectedGenderValue = value.toString();
                      print(selectedGenderValue);
                    });

                    // authentication.registerDonorBloodController.value =
                    //     selectedValue as TextEditingValue;
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    // selectedGenderValue = value.toString();
                    // print(selectedGenderValue);
                    // // authentication.registerDonorBloodController.value =
                    // //     selectedValue as TextEditingValue;
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
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: kblack.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(10.r),
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
                        ],
                        color: Kwhite,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.calendar_month,
                                color: Ktextcolor,
                              )),
                          Text(
                            "Start Date",
                            style: GoogleFonts.roboto(
                                color: Ktextcolor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 3.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: kblack.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(10.r),
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
                        ],
                        color: Kwhite,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.calendar_month,
                                color: Ktextcolor,
                              )),
                          Text(
                            "End Date",
                            style: GoogleFonts.roboto(
                                color: Ktextcolor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: kblack.withOpacity(0.3)),
                  color: Colors.white,
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
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  maxLines: 5,
                  style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Reason',
                    hintStyle: GoogleFonts.roboto(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   borderSide: BorderSide(
                    //     color: Colors.grey.withOpacity(0.3),
                    //     width: 1.0,
                    //   ),
                    // ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   borderSide: BorderSide(
                    //     color: Colors.grey.withOpacity(0.3),
                    //     width: 1.0,
                    //   ),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   borderSide: BorderSide(
                    //     color: Colors.orange.withOpacity(0.5),
                    //     width: 1.0,
                    //   ),
                    // ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              CustomButton(
                  borderRadius: BorderRadius.circular(30.r),
                  Color: kOrange,
                  textColor: Kwhite,
                  height: 42.h,
                  width: double.infinity,
                  label: "Apply Leave",
                  fontSize: kSixteenFont,
                  fontWeight: kFW500,
                  isLoading: false,
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
