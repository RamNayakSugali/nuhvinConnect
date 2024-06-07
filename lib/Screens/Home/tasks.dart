import 'package:nuhvinconnect/untils/export_file.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  final List<String> projects = [
    'All',
    'Hotel App',
    'Devastanam app',
  ];

  final List<String> members = [
    'All',
    'Ram',
    'Kishore',
  ];

  String? selectedValue;
  String? selectedGenderValue;
  String? selectedProjectvalue;
  String? selectedMembervalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 16.w,
        // backgroundColor: Kwhite,
        // leading: IconButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        //   icon: Icon(Icons.arrow_back_ios, size: 25.sp, color: KdarkText),
        // ),
        title: Text(
          "Tasks",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.r),
        child: Column(
          children: [
            Container(
              height: 45.h,
              margin: EdgeInsets.only(top: 15.h),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Ktextcolor.withOpacity(0.3),
                    blurRadius: 0.5.r,
                    spreadRadius: 0.5.r,
                  )
                ],
                color: Kwhite,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TextFormField(
                style: GoogleFonts.roboto(
                    fontSize: 13.sp,
                    fontWeight: kFW500,
                    color: kblack.withOpacity(0.8)),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Ktextcolor.withOpacity(0.7),
                  ),
                  focusColor: Kwhite.withOpacity(0.5),
                  filled: true,
                  hintText: " Search  Task",
                  //"Search Categories"

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Ktextcolor.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Ktextcolor.withOpacity(0.3), width: 0.5),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Ktextcolor.withOpacity(0.3), width: 0.5),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Ktextcolor.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kOrange.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  fillColor: Kwhite,
                  // suffixIcon: suffix,
                  // prefixIcon: prefix,
                  // hintText: hintText,

                  //make hint text
                  hintStyle: GoogleFonts.roboto(
                    color: KTextgery.withOpacity(0.5),
                    fontSize: 12.sp,
                    fontWeight: kFW500,
                  ),

                  //create lable
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        left: 30.w, right: 30.w, top: 12.h, bottom: 12.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kOrange.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20.r),
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
                      "Manage Task",
                      style: GoogleFonts.roboto(
                          fontSize: 13.sp,
                          color: KdarkText,
                          fontWeight: kFW500),
                    )),
                Container(
                    padding: EdgeInsets.only(
                        left: 30.w, right: 30.w, top: 12.h, bottom: 12.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kOrange,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1.5,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                          color: Ktextcolor.withOpacity(0.25),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/add_task.png",
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          "Add New Task",
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: KdarkText,
                              fontWeight: kFW500),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150.w,
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
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
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
                        return 'Please select Project.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        selectedProjectvalue = value.toString();
                      });

                      // authentication.registerDonorBloodController.value =
                      //     selectedValue as TextEditingValue;
                      //Do something when selected item is changed.
                    },
                    onSaved: (value) {
                      selectedProjectvalue = value.toString();

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
                Container(
                  width: 150.w,
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
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    hint: Text(
                      'Members',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: KTextgery.withOpacity(0.5),
                      ),
                    ),
                    items: members
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
                        return 'Please select members.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        selectedMembervalue = value.toString();
                      });

                      // authentication.registerDonorBloodController.value =
                      //     selectedValue as TextEditingValue;
                      //Do something when selected item is changed.
                    },
                    onSaved: (value) {
                      selectedMembervalue = value.toString();

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
          ],
        ),
      ),
    );
  }
}
