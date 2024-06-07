import 'package:nuhvinconnect/untils/export_file.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  final List<String> Genders = [
    'Monday',
    'Tuesday',
    'WednesDay',
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
          titleSpacing: 16.w,
          backgroundColor: Kwhite,
          // leading: IconButton(
          //   onPressed: () {
          //     Get.back();
          //   },
          //   icon: Icon(Icons.arrow_back_ios, size: 25.sp, color: KdarkText),
          // ),
          title: Text(
            "Reports",
            style: GoogleFonts.roboto(
                fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 18,
                child: ListView.builder(
                    itemCount: days.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(
                              right: 8.w, left: 2.w, top: 2.h, bottom: 2.h),
                          width: MediaQuery.of(context).size.width / 3,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: kBackGroundWhite,
                            borderRadius: BorderRadius.circular(8.r),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 1.5,
                                blurRadius: 3,
                                offset: const Offset(0, 2),
                                color: Ktextcolor.withOpacity(0.25),
                              )
                            ],
                          ),
                          child: Text(
                            days[index]["title"],
                            style: GoogleFonts.roboto(
                                fontSize: 13.sp,
                                color: KdarkText,
                                fontWeight: kFW500),
                          ));
                    }),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                      width: 35.w,
                      padding: EdgeInsets.only(
                          left: 5.w, right: 5.w, top: 10.h, bottom: 10.h),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: kOrange,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            bottomLeft: Radius.circular(10.r)),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1.5,
                            blurRadius: 3,
                            offset: const Offset(0, 2),
                            color: Ktextcolor.withOpacity(0.25),
                          )
                        ],
                      ),
                      child: Text(
                        "C",
                        style: GoogleFonts.roboto(
                            fontSize: 13.sp,
                            color: KdarkText,
                            fontWeight: kFW500),
                      )),
                  Container(
                      padding: EdgeInsets.only(
                          left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: kBackGroundWhite,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.r),
                            bottomRight: Radius.circular(10.r)),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0.1,
                            blurRadius: 0.1,
                            offset: const Offset(0, 2),
                            color: Ktextcolor.withOpacity(0.25),
                          )
                        ],
                      ),
                      child: Text(
                        "Charan.S",
                        style: GoogleFonts.roboto(
                            fontSize: 13.sp,
                            color: KdarkText,
                            fontWeight: kFW500),
                      )),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Text(
                    "Range: ",
                    style: GoogleFonts.roboto(
                        fontSize: kFourteenFont,
                        color: KdarkText,
                        fontWeight: kFW400),
                  ),
                  Text(
                    " may 20,2024 - may 26,2024",
                    style: GoogleFonts.roboto(
                        fontSize: kFourteenFont,
                        color: KlightText,
                        fontWeight: kFW400),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Tracked time:  ",
                    style: GoogleFonts.roboto(
                        fontSize: kFourteenFont,
                        color: KdarkText,
                        fontWeight: kFW400),
                  ),
                  Text(
                    "00h 00m",
                    style: GoogleFonts.roboto(
                        fontSize: kFourteenFont,
                        color: KlightText,
                        fontWeight: kFW400),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "amount earned:  ",
                    style: GoogleFonts.roboto(
                        fontSize: kFourteenFont,
                        color: KdarkText,
                        fontWeight: kFW400),
                  ),
                  Text(
                    "₹ 0.00",
                    style: GoogleFonts.roboto(
                        fontSize: kFourteenFont,
                        color: KlightText,
                        fontWeight: kFW400),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
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
                    'Time by day',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: KTextgery.withOpacity(0.5),
                    ),
                  ),
                  items: Genders.map((item) => DropdownMenuItem<String>(
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
                    selectedGenderValue = value.toString();
                    print(selectedGenderValue);
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
                height: 30.h,
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
                    'Time by Project',
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
                      return 'Please select Project.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      selectedProjectvalue = value.toString();
                      print(selectedGenderValue);
                    });

                    // authentication.registerDonorBloodController.value =
                    //     selectedValue as TextEditingValue;
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    selectedProjectvalue = value.toString();
                    print(selectedGenderValue);
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
                height: 30.h,
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
                    'Time by Task',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: KTextgery.withOpacity(0.5),
                    ),
                  ),
                  items: tasks
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
                      return 'Please select Gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      selectedTaskvalue = value.toString();
                      print(selectedGenderValue);
                    });

                    // authentication.registerDonorBloodController.value =
                    //     selectedValue as TextEditingValue;
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    selectedTaskvalue = value.toString();
                    print(selectedGenderValue);
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
            ],
          ),
        ));
  }
}
