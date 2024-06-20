import 'package:flutter/material.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class RegisterFormScreen extends StatelessWidget {
  final String selectedType;

  RegisterFormScreen({required this.selectedType});

  Widget getForm() {
    switch (selectedType) {
      case 'Company':
        return CompanyForm();
      case 'University':
        return UniversityForm();
      case 'Employee':
        return EmployeeForm();
      case 'Student':
        return StudentForm();
      case 'Others':
        return OthersForm();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "$selectedType Registration",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: getForm(),
        ),
      ),
    );
  }
}

class CompanyForm extends StatefulWidget {
  @override
  State<CompanyForm> createState() => _CompanyFormState();
}

class _CompanyFormState extends State<CompanyForm> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomFormFields(
          enabled: true,
          labelColor: KText,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: kFourteenFont,
          fontWeight: FontWeight.w500,
          hintText: "Enter Company/Organization",
          maxLines: 1,
          readOnly: false,
          label: 'Enter Company/Organization',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter details';
            }
            return null;
          },
        ),
        SizedBox(height: 20),
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
        SizedBox(height: 20),
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
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(10.r),
              ),
              errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(10.r),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
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
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
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
        SizedBox(height: 20),
        CustomButton(
            borderRadius: BorderRadius.circular(30.r),
            Color: kOrange,
            textColor: Kwhite,
            height: 42.h,
            width: double.infinity,
            label: "Register Now",
            fontSize: kSixteenFont,
            fontWeight: kFW500,
            isLoading: false,
            onTap: () {
              Get.toNamed(kNavigationScreen);
            }),
      ],
    );
  }
}

class UniversityForm extends StatefulWidget {
  @override
  State<UniversityForm> createState() => _UniversityFormState();
}

class _UniversityFormState extends State<UniversityForm> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomFormFields(
          enabled: true,
          labelColor: KText,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: kFourteenFont,
          fontWeight: FontWeight.w500,
          hintText: "Enter University/College/Institution",
          maxLines: 1,
          readOnly: false,
          label: 'Enter University/College/Institution',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter details';
            }
            return null;
          },
        ),
        SizedBox(height: 20),
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
        SizedBox(height: 20),
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
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(10.r),
              ),
              errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(10.r),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
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
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
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
        SizedBox(height: 20),
        CustomButton(
            borderRadius: BorderRadius.circular(30.r),
            Color: kOrange,
            textColor: Kwhite,
            height: 42.h,
            width: double.infinity,
            label: "Register Now",
            fontSize: kSixteenFont,
            fontWeight: kFW500,
            isLoading: false,
            onTap: () {
              Get.toNamed(kNavigationScreen);
            }),
      ],
    );
  }
}

// EmployeeForm, StudentForm, and OthersForm defined similarly as CompanyForm and UniversityForm
class EmployeeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter Employee Details',
            prefixIcon: Icon(Icons.work),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter Your Email Address',
            prefixIcon: Icon(Icons.email),
            suffix: TextButton(
              onPressed: () {},
              child: Text('Verify'),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Create New Password',
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
            backgroundColor: Colors.blue,
            minimumSize: Size(double.infinity, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            // Handle register button press
          },
          child: Text(
            'Register Now',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class StudentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter Student Details',
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter Your Email Address',
            prefixIcon: Icon(Icons.email),
            suffix: TextButton(
              onPressed: () {},
              child: Text('Verify'),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Create New Password',
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
            backgroundColor: Colors.blue,
            minimumSize: Size(double.infinity, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            // Handle register button press
          },
          child: Text(
            'Register Now',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class OthersForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter Other Details',
            prefixIcon: Icon(Icons.miscellaneous_services),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter Your Email Address',
            prefixIcon: Icon(Icons.email),
            suffix: TextButton(
              onPressed: () {},
              child: Text('Verify'),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Create New Password',
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
            backgroundColor: Colors.blue,
            minimumSize: Size(double.infinity, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Register Now',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
