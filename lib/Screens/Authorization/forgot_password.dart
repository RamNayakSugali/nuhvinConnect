import 'package:flutter/material.dart';

import 'package:nuhvinconnect/untils/export_file.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      appBar: AppBar(
        backgroundColor: Kwhite,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: KTextdark,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h, top: 70.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Forgot Password",
                style: GoogleFonts.roboto(
                    fontSize: 30.sp, color: kOrange, fontWeight: kFW600),
              ),
              SizedBox(
                height: 35.h,
              ),
              Text(
                "Please enter your email address to request a password reset",
                style: GoogleFonts.roboto(
                    fontSize: kSixteenFont, color: KText, fontWeight: kFW400),
              ),
              SizedBox(
                height: 35.h,
              ),
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
                height: 95.h,
              ),

              CustomButton(
                  borderRadius: BorderRadius.circular(30.r),
                  Color: kOrange,
                  textColor: Kwhite,
                  height: 42.h,
                  width: double.infinity,
                  label: "Reset",
                  fontSize: kSixteenFont,
                  fontWeight: kFW500,
                  isLoading: false,
                  onTap: () {
                    Get.back();
                  }),
            
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: RichText(
                    textScaleFactor: 1,
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: "Remember It ? ",

                      style: GoogleFonts.roboto(
                        fontSize: kTwelveFont,
                        fontWeight: kFW500,
                        color: KText,
                      ),
                      // GoogleFonts.roboto(
                      //   fontSize: kTwentyFont,
                      //   fontWeight: FontWeight.bold,
                      //   color: selectedTheme == "Lighttheme"
                      //       ? KdarkText
                      //       : Kwhite,
                      // ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Login Here",
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              color: KText,
                              fontWeight: kFW600),

                          // style: GoogleFonts.roboto(
                          //     fontSize: kTwentyFont,
                          //     fontWeight: FontWeight.bold,
                          //     color: KOrange),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
