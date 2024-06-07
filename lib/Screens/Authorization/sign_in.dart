import 'package:flutter/services.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool passwordVisible = true;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Are you sure?',
              style: GoogleFonts.roboto(
                  fontSize: kEighteenFont,
                  fontWeight: kFW600,
                  color: Ktextcolor),
            ),
            content: Text(
              'Do you want to exit this App',
              style: GoogleFonts.roboto(
                  fontSize: 13.sp, fontWeight: kFW600, color: KText),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  'No',
                  style: GoogleFonts.roboto(
                      fontSize: kTwelveFont,
                      fontWeight: kFW600,
                      color: KdarkText),
                ),
              ),
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                child: Text(
                  'Yes',
                  style: GoogleFonts.roboto(
                      fontSize: kTwelveFont,
                      fontWeight: kFW600,
                      color: kOrange),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Kwhite,
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
                  "Login",
                  style: GoogleFonts.roboto(
                      fontSize: 30.sp, color: kOrange, fontWeight: kFW600),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Text(
                  "Enter your credentials to login.",
                  style: GoogleFonts.roboto(
                      fontSize: kSixteenFont, color: KText, fontWeight: kFW400),
                ),
                SizedBox(
                  height: 120.h,
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
                /////////////////////////////////////////////////////////////////
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Password",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: kFourteenFont,
                      //  letterSpacing: 1,
                      color: KText,
                      fontWeight: kFW500),
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
                  child: TextFormField(
                    obscureText: passwordVisible,
                    style: GoogleFonts.roboto(
                        fontSize: 13.sp,
                        fontWeight: kFW500,
                        color: kblack.withOpacity(0.8)),
                    decoration: InputDecoration(
                      focusColor: Kwhite.withOpacity(0.5),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
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
                      fillColor: Kwhite,
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 20.sp,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      hintText: "**************",
                      alignLabelWithHint: true,
                      hintStyle: GoogleFonts.roboto(
                        color: KTextgery.withOpacity(0.5),
                        fontSize: 12.sp,
                        fontWeight: kFW500,
                      ),
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////
                //
                ////old data

                SizedBox(
                  height: 80.h,
                ),

                InkWell(
                  onTap: () {
                    Get.toNamed(kForgotPasswordScreen);
                  },
                  child: Center(
                    child: Text(
                      "Forgot Password ?",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: kFourteenFont,
                          //  letterSpacing: 1,
                          color: KText,
                          fontWeight: kFW500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                    borderRadius: BorderRadius.circular(30.r),
                    Color: kOrange,
                    textColor: Kwhite,
                    height: 42.h,
                    width: double.infinity,
                    label: "Sign In",
                    fontSize: kSixteenFont,
                    fontWeight: kFW500,
                    isLoading: false,
                    onTap: () {
                      Get.toNamed(kNavigationScreen);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
