import 'package:nuhvinconnect/untils/export_file.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Text(
                "Register",
                style: GoogleFonts.roboto(
                    fontSize: 30.sp, color: kOrange, fontWeight: kFW600),
              ),
              SizedBox(
                height: 35.h,
              ),
              Text(
                "Create an account now to get started on your health and happiness journey.",
                style: GoogleFonts.roboto(
                    fontSize: kSixteenFont, color: KText, fontWeight: kFW400),
              ),
              SizedBox(
                height: 30.h,
              ),
              // momsfood
              // CustomFormField(
              //   enabled: true,
              //   controller: apicontroller.signupfullnameController,
              //   obscureText: false,
              //   contentPadding: const EdgeInsets.symmetric(
              //       vertical: 16, horizontal: 8),
              //   fontSize: kFourteenFont,
              //   fontWeight: FontWeight.w500,
              //   hintText: "Full Name",
              //   maxLines: 1,
              //   readOnly: false,
              //   label: 'Full Name',
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter Full Name';
              //     }
              //     return null;
              //   },
              // ),
              // CustomFormFieldOutilined(
              //   controller: authentication.registerDonorfirstNameController,
              //   obscureText: false,
              //   contentPadding:
              //       const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              //   fontSize: kFourteenFont,
              //   fontWeight: FontWeight.w500,
              //   hintText: "Enter First Name",
              //   maxLines: 1,
              //   readOnly: false,
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter First Name';
              //     }
              //     return null;
              //   },
              //   onChanged: (value) {},
              //   label: 'First Name',
              // ),
              ////////////
              CustomFormFields(
                enabled: true,
                labelColor: KText,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: kFourteenFont,
                fontWeight: FontWeight.w500,
                hintText: "Enter First Name",
                maxLines: 1,
                readOnly: false,
                label: 'First Name',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter First Name';
                  }
                  return null;
                },
              ),
              ///////////
              SizedBox(
                height: 20.h,
              ),
              // CustomFormFieldOutilined(
              //   controller: authentication.registerDonorlastNameController,
              //   obscureText: false,
              //   contentPadding:
              //       const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              //   fontSize: kFourteenFont,
              //   fontWeight: FontWeight.w500,
              //   hintText: "Enter Last Name",
              //   maxLines: 1,
              //   readOnly: false,
              //   onChanged: (value) {},
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter Last Name';
              //     }
              //     return null;
              //   },
              //   label: 'Last Name',
              // ),
              CustomFormFields(
                enabled: true,
                labelColor: KText,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: kFourteenFont,
                fontWeight: FontWeight.w500,
                hintText: "Enter Last Name",
                maxLines: 1,
                readOnly: false,
                label: 'Last Name',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Last Name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              /////
              // CustomFormField(
              //   enabled: true,
              //   controller: apicontroller.signupfullnameController,
              //   obscureText: false,
              //   contentPadding: const EdgeInsets.symmetric(
              //       vertical: 16, horizontal: 8),
              //   fontSize: kFourteenFont,
              //   fontWeight: FontWeight.w500,
              //   hintText: "Full Name",
              //   maxLines: 1,
              //   readOnly: false,
              //   label: 'Full Name',
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter Full Name';
              //     }
              //     return null;
              //   },
              // ),
              //////
              // CustomFormFieldOutilined(
              //   controller: authentication.registerDonorEmailController,
              //   obscureText: false,
              //   contentPadding:
              //       const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              //   fontSize: kFourteenFont,
              //   fontWeight: FontWeight.w500,
              //   hintText: "Enter Email",
              //   maxLines: 1,
              //   readOnly: false,
              //   onChanged: (value) {},
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'Please enter Email';
              //     }
              //     return null;
              //   },
              //   label: 'Email',
              // ),
              CustomFormFields(
                enabled: true,
                labelColor: KText,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: kFourteenFont,
                fontWeight: FontWeight.w500,
                hintText: "Enter Enter Email",
                maxLines: 1,
                readOnly: false,
                label: 'Enter Email',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Email';
                  }
                  return null;
                },
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
                hintText: "Enter Address",
                maxLines: 1,
                readOnly: false,
                label: 'Enter Address',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Address';
                  }
                  return null;
                },
              ),
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
              SizedBox(
                height: 80.h,
              ),
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

              CustomButton(
                  borderRadius: BorderRadius.circular(30.r),
                  Color: kOrange,
                  textColor: Kwhite,
                  height: 42.h,
                  width: double.infinity,
                  label: "Sign Up",
                  fontSize: kSixteenFont,
                  fontWeight: kFW500,
                  isLoading: false,
                  onTap: () {
                    Get.toNamed(kSignInScreen);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
