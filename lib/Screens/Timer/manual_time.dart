import 'package:nuhvinconnect/untils/export_file.dart';
import 'package:intl/intl.dart';

class ManualTime extends StatefulWidget {
  const ManualTime({super.key});

  @override
  State<ManualTime> createState() => _ManualTimeState();
}

class _ManualTimeState extends State<ManualTime> {
  final List<String> projects = [
    'HR APP',
    'Nuhvin Bllod Bank',
    'Woman Rapido',
  ];
  String? selectedValue;
  String? selectedProjectValue;
  String startTime = "";
  String closeTime = "";
  DateTime selectedDate = DateTime.now();
  DateTime choosenDate = DateTime.now();
  var selectDate = "Select Date".obs;
  ///////////////////////////////
  /////////////// openTime
  Future<TimeOfDay?> getTime({
    required BuildContext context,
    String? title,
    String? formattedTime,
    TimeOfDay? initialTime,
    String? cancelText,
    String? confirmText,
  }) async {
    TimeOfDay? time = await showTimePicker(
      initialEntryMode: TimePickerEntryMode.dial,
      context: context,
      initialTime: initialTime ?? TimeOfDay.now(),
      cancelText: cancelText ?? "Cancel",
      confirmText: confirmText ?? "Save",
      helpText: title ?? "Select time",
      builder: (context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            timePickerTheme: TimePickerThemeData(
              backgroundColor: Kwhite, // Background color
              hourMinuteTextColor: kOrange, // Text color for hours and minutes
              dayPeriodTextColor: KdarkText, // Text color for AM/PM
              dayPeriodBorderSide:
                  BorderSide(color: KdarkText), // Border color for AM/PM
              dialHandColor: kOrange, // Color of the hour hand
              dialTextColor: Kwhite, // Text color on the clock dial
              dialBackgroundColor: kOrange.withOpacity(0.5),
              //dayPeriodColor: lightBlue,
              //hourMinuteColor: lightBlue,
              entryModeIconColor: kOrange,
              helpTextStyle: GoogleFonts.roboto(
                color: KText, // Set the text color for "Enter time"
              ),
              cancelButtonStyle: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.brown.shade300),
                  foregroundColor: MaterialStateProperty.all<Color>(kOrange)),
              confirmButtonStyle: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.brown.shade300),
                  foregroundColor: MaterialStateProperty.all<Color>(kOrange)),
              hourMinuteTextStyle: GoogleFonts.roboto(
                  fontSize: 30), // Text style for hours and minutes
            ),
            textTheme: TextTheme(
              bodySmall: GoogleFonts.roboto(color: KdarkText),
            ),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: kOrange,
              selectionColor: kOrange,
              selectionHandleColor: KText,
            ),
          ),
          child: child!,
        );
      },
    );
    formattedTime = MaterialLocalizations.of(context).formatTimeOfDay(time!);
    setState(() {
      startTime = formattedTime!;
    });
    return time;
  }

  //Closetime
  Future<TimeOfDay?> closedTime({
    required BuildContext context,
    String? title,
    String? formattedTime,
    TimeOfDay? initialTime,
    String? cancelText,
    String? confirmText,
  }) async {
    TimeOfDay? time = await showTimePicker(
      initialEntryMode: TimePickerEntryMode.dial,
      context: context,
      initialTime: initialTime ?? TimeOfDay.now(),
      cancelText: cancelText ?? "Cancel",
      confirmText: confirmText ?? "Save",
      helpText: title ?? "Select time",
      builder: (context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            timePickerTheme: TimePickerThemeData(
              backgroundColor: Kwhite, // Background color
              hourMinuteTextColor: kOrange, // Text color for hours and minutes
              dayPeriodTextColor: KdarkText, // Text color for AM/PM
              dayPeriodBorderSide:
                  BorderSide(color: KdarkText), // Border color for AM/PM
              dialHandColor: kOrange, // Color of the hour hand
              dialTextColor: Kwhite, // Text color on the clock dial
              dialBackgroundColor: kOrange.withOpacity(0.5),
              //dayPeriodColor: lightBlue,
              //hourMinuteColor: lightBlue,
              entryModeIconColor: kOrange,
              helpTextStyle: GoogleFonts.roboto(
                color: KText, // Set the text color for "Enter time"
              ),
              cancelButtonStyle: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.brown.shade300),
                  foregroundColor: MaterialStateProperty.all<Color>(kOrange)),
              confirmButtonStyle: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.brown.shade300),
                  foregroundColor: MaterialStateProperty.all<Color>(kOrange)),
              hourMinuteTextStyle: GoogleFonts.roboto(
                  fontSize: 30), // Text style for hours and minutes
            ),
            textTheme: TextTheme(
              bodySmall: GoogleFonts.roboto(color: KdarkText),
            ),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: kOrange,
              selectionColor: kOrange,
              selectionHandleColor: KText,
            ),
          ),
          child: child!,
        );
      },
    );
    formattedTime = MaterialLocalizations.of(context).formatTimeOfDay(time!);
    setState(() {
      closeTime = formattedTime!;
    });
    return time;
  }

  ///////////////////////////////
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
          "Manual Timer",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                "Time Start",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: kFourteenFont,
                    //  letterSpacing: 1,
                    color: KText,
                    fontWeight: kFW500),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                  padding: EdgeInsets.only(
                      left: 5.w, right: 10.w, top: 13.h, bottom: 13.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Kwhite,
                      border: Border.all(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      boxShadow: [
                        BoxShadow(
                          color: kblack.withOpacity(0.2),
                          blurRadius: 2.r,
                          offset: Offset(1, 1),
                          spreadRadius: 1.r,
                        )
                        // BoxShadow(
                        //   color: Color(0x3FD3D1D8),
                        //   blurRadius: 30,
                        //   offset: Offset(15, 15),
                        //   spreadRadius: 2,
                        // )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        startTime == "" ? "Select Start Time" : "$startTime",
                        //   "hi",
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: kFW500,
                            color: startTime == ""
                                ? KTextgery.withOpacity(0.5)
                                : kblack),
                      ),
                      InkWell(
                        onTap: () async {
                          TimeOfDay? time = await getTime(
                            context: context,
                            title: "Select Your Time",
                          );
                        },
                        child: Icon(
                          Icons.timer,
                          color: kblack.withOpacity(0.6),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Time End",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: kFourteenFont,
                    //  letterSpacing: 1,
                    color: KText,
                    fontWeight: kFW500),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                  padding: EdgeInsets.only(
                      left: 5.w, right: 10.w, top: 13.h, bottom: 13.h),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: kblack.withOpacity(0.2),
                          blurRadius: 2.r,
                          offset: Offset(1, 1),
                          spreadRadius: 1.r,
                        )
                        // BoxShadow(
                        //   color: Color(0x3FD3D1D8),
                        //   blurRadius: 30,
                        //   offset: Offset(15, 15),
                        //   spreadRadius: 2,
                        // )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        closeTime == "" ? "Select End Time" : "$closeTime",
                        //   "hi",
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: kFW500,
                            color: closeTime == ""
                                ? KTextgery.withOpacity(0.5)
                                : kblack),
                      ),
                      InkWell(
                        onTap: () async {
                          TimeOfDay? time = await closedTime(
                            context: context,
                            title: "Select Your Time",
                          );
                        },
                        child: Icon(
                          Icons.timer,
                          color: kblack.withOpacity(0.6),
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 20.h),

              //
              ////old data
              // CustomFormFields(
              //   labelColor: KText,
              //   enabled: true,
              //   controller: authentication.registerDonorEmailController,
              //   obscureText: false,
              //   contentPadding:
              //       const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              //   fontSize: kFourteenFont,
              //   fontWeight: FontWeight.w500,
              //   hintText: "Enter Email",
              //   maxLines: 1,
              //   readOnly: false,
              //   label: 'Email',
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter Email';
              //     }
              //     return null;
              //   },
              // ),

              // CustomFormField(
              //   suffix: InkWell(
              //       onTap: () async {
              //         // setState(() {
              //         //   isFormOpen.value = true;
              //         // });
              //         final DateTime? picked = await showDatePicker(
              //           context: context,
              //           initialDate: selectedDate,
              //           firstDate: DateTime(1924, 8),
              //           //  firstDate: DateTime(2015, 8),
              //           lastDate: DateTime.now(),
              //           builder: (context, child) {
              //             return Theme(
              //               data: Theme.of(context).copyWith(
              //                 colorScheme: const ColorScheme.light(
              //                   // background: white,
              //                   primary: kbloodred,
              //                   //onPrimary: white,
              //                   onSurface: Colors.black,
              //                 ),
              //                 textButtonTheme: TextButtonThemeData(
              //                   style: TextButton.styleFrom(
              //                       // primary: Kbluedark,
              //                       ),
              //                 ),
              //               ),
              //               child: child!,
              //             );
              //           },
              //         );

              //         if (picked != null && picked != selectedDate) {
              //           // if (picked.isAfter(DateTime.now())) {
              //           //   // date.isAfter(DateTime.now()
              //           //   //  if(date.month>DateTime.now().month){
              //           //   Fluttertoast.showToast(
              //           //       msg: "Upcomming Months can't be selected");
              //           // } else {
              //           setState(() {
              //             selectedDate = picked;
              //             choosenDate = selectedDate;
              //             selectDate.value = DateFormat('MM/dd/yyyy')
              //                 // DateFormat.yMMMEd()
              //                 .format(selectedDate);
              //           });
              //           //  }
              //           // setState(() {
              //           //   selectedDate = picked;
              //           //   choosenDate = selectedDate;
              //           // }
              //           // );
              //         }
              //       },
              //       child: Icon(Icons.calendar_today)),
              //   obscureText: false,
              //   contentPadding:
              //       const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              //   fontSize: kFourteenFont,
              //   fontWeight: FontWeight.w500,
              //   textColor: KdarkText,
              //   hintStyle: GoogleFonts.roboto(
              //       color: KdarkText.withOpacity(
              //         0.8,
              //       ),
              //       fontSize: kTwelveFont),
              //   keyboardType: TextInputType.none,
              //   maxLines: 1,
              //   controller:
              //       authentication.registerDonorDateofBirthController,
              //   hintText: selectedDate != null
              //       ? DateFormat('dd/MM/yyyy')
              //           // DateFormat.yMMMEd()
              //           .format(selectedDate)
              //       // DateFormat.yMMMEd().format(selectedDate)
              //       : "Select Date",
              //   readOnly: false,
              //   onChanged: (value) {},
              // ),
              //
              CustomFormFields(
                hintColor: DateFormat.yMMMd().format(selectedDate) ==
                        DateFormat.yMMMd().format(DateTime.now())
                    ? KTextgery.withOpacity(0.5)
                    : KdarkText,
                labelColor: KText,
                suffix: InkWell(
                    onTap: () async {
                      // setState(() {
                      //   isFormOpen.value = true;
                      // });
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(1924, 8),
                        //  firstDate: DateTime(2015, 8),
                        lastDate: DateTime(2040, 8),
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: const ColorScheme.light(
                                // background: white,
                                primary: kOrange,
                                //onPrimary: white,
                                onSurface: Colors.black,
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                    // primary: Kbluedark,
                                    ),
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );

                      if (picked != null && picked != selectedDate) {
                        // if (picked.isAfter(DateTime.now())) {
                        //   // date.isAfter(DateTime.now()
                        //   //  if(date.month>DateTime.now().month){
                        //   Fluttertoast.showToast(
                        //       msg: "Upcomming Months can't be selected");
                        // } else {
                        setState(() {
                          selectedDate = picked;
                          choosenDate = selectedDate;
                          selectDate.value = DateFormat('MM/dd/yyyy')
                              // DateFormat.yMMMEd()
                              .format(selectedDate);
                        });
                        //  }
                        // setState(() {
                        //   selectedDate = picked;
                        //   choosenDate = selectedDate;
                        // }
                        // );
                      }
                    },
                    child: Icon(
                      Icons.calendar_today,
                      color: kblack.withOpacity(0.6),
                    )),
                enabled: true,

                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                // fontSize: kFourteenFont,
                // fontWeight: FontWeight.w500,
                fontSize: kFourteenFont,
                fontWeight: FontWeight.w500,
                textColor: KdarkText,
                keyboardType: TextInputType.none,
                textStyle: GoogleFonts.roboto(color: kblack),
                maxLines: 1,

                hintText:
                    // selectedDate == DateTime.now()
                    DateFormat.yMMMd().format(selectedDate) ==
                            DateFormat.yMMMd().format(DateTime.now())
                        ? "Select Date"
                        : DateFormat('dd/MM/yyyy')
                            // DateFormat.yMMMEd()
                            .format(selectedDate)
                // DateFormat.yMMMEd().format(selectedDate)
                ,
                readOnly: false,
                onChanged: (value) {},
                label: 'Date of Birth',
                // hintText: "Full Name",
                // maxLines: 1,
                // readOnly: false,
                // label: 'Full Name',
                validator: (value) {
                  if (DateFormat.yMMMd().format(selectedDate) ==
                      DateFormat.yMMMd().format(DateTime.now())) {
                    return 'Please select Date of Birth';
                  }
                  return null;
                },
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
