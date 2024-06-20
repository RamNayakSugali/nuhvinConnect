import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:nuhvinconnect/Components/custom_button.dart';
import 'package:nuhvinconnect/Components/custom_form_field.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? selectedRegisterType;

  final List<String> registerTypes = [
    'Company',
    'University',
    'Employee',
    'Student',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Text(
                "Register",
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  hint: Text(
                    'Select Registration Type',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  value: selectedRegisterType,
                  items: registerTypes
                      .map((String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a registration type.';
                    }
                    return null;
                  },
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedRegisterType = newValue;
                    });
                  },
                  onSaved: (value) {
                    selectedRegisterType = value;
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey.withOpacity(0.6),
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
              SizedBox(height: 20.h),
              //  Display corresponding registration form based on selected type
              if (selectedRegisterType == 'Company')
                const CompanyRegistrationForm()
              else if (selectedRegisterType == 'University')
                const UniversityRegistrationForm()
              else if (selectedRegisterType == 'Employee')
                const EmployeeRegistrationForm()
              else if (selectedRegisterType == "Student")
                const StudentRegistrationForm()
              else if (selectedRegisterType == "Others")
                const OthersRegistrationForm(),
              SizedBox(height: 50.h),
              CustomButton(
                borderRadius: BorderRadius.circular(30),
                Color: kOrange,
                textColor: Colors.white,
                height: 42,
                width: double.infinity,
                label: "Sign Up",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                isLoading: false,
                onTap: () {
                  Get.toNamed(kSignInScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyRegistrationForm extends StatefulWidget {
  const CompanyRegistrationForm({Key? key}) : super(key: key);

  @override
  State<CompanyRegistrationForm> createState() =>
      _CompanyRegistrationFormState();
}

class _CompanyRegistrationFormState extends State<CompanyRegistrationForm> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Company Registration Form",
          style:
              GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "Enter Company/Organization",
          maxLines: 1,
          readOnly: false,
          label: 'Enter Company/Organization',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter Company Name';
            }
            return null;
          },
        ),
        SizedBox(height: 20),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "Enter Email",
          maxLines: 1,
          readOnly: false,
          label: 'Email',
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
              fontSize: kFourteenFont, color: KText, fontWeight: kFW500),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: kblack.withOpacity(0.4)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 2,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: TextFormField(
            obscureText: passwordVisible,
            style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              border: InputBorder.none,
              hintText: "**************",
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              hintStyle: GoogleFonts.roboto(
                color: Colors.grey.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class UniversityRegistrationForm extends StatefulWidget {
  const UniversityRegistrationForm({Key? key}) : super(key: key);

  @override
  State<UniversityRegistrationForm> createState() =>
      _UniversityRegistrationFormState();
}

class _UniversityRegistrationFormState
    extends State<UniversityRegistrationForm> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "University Registration Form",
          style:
              GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "University/College/Institution",
          maxLines: 1,
          readOnly: false,
          label: 'University/College/Institution',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter Hospital Name';
            }
            return null;
          },
        ),
        SizedBox(height: 20),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "Enter Email",
          maxLines: 1,
          readOnly: false,
          label: 'Email',
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
              fontSize: kFourteenFont, color: KText, fontWeight: kFW500),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: kblack.withOpacity(0.4)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 2,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: TextFormField(
            obscureText: passwordVisible,
            style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              border: InputBorder.none,
              hintText: "**************",
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              hintStyle: GoogleFonts.roboto(
                color: Colors.grey.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EmployeeRegistrationForm extends StatefulWidget {
  const EmployeeRegistrationForm({Key? key}) : super(key: key);

  @override
  State<EmployeeRegistrationForm> createState() =>
      _EmployeeRegistrationFormState();
}

class _EmployeeRegistrationFormState extends State<EmployeeRegistrationForm> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Employee Registration Form",
          style:
              GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: CustomFormFields(
                enabled: true,
                labelColor: Colors.black,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: 14,
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
            ),
            SizedBox(width: 10),
            Expanded(
              child: CustomFormFields(
                enabled: true,
                labelColor: Colors.black,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: 14,
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
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "Company/Organization name",
          maxLines: 1,
          readOnly: false,
          label: 'Enter Company Organization name',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter Hospital Name';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "Enter Email",
          maxLines: 1,
          readOnly: false,
          label: 'Email',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter Email';
            }
            return null;
          },
        ),
        SizedBox(height: 20.h),
        Text(
          "Password",
          textAlign: TextAlign.start,
          style: GoogleFonts.roboto(
              fontSize: kFourteenFont, color: KText, fontWeight: kFW500),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: kblack.withOpacity(0.4)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 2,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: TextFormField(
            obscureText: passwordVisible,
            style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              border: InputBorder.none,
              hintText: "**************",
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              hintStyle: GoogleFonts.roboto(
                color: Colors.grey.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class StudentRegistrationForm extends StatefulWidget {
  const StudentRegistrationForm({Key? key}) : super(key: key);

  @override
  State<StudentRegistrationForm> createState() =>
      _StudentRegistrationFormState();
}

class _StudentRegistrationFormState extends State<StudentRegistrationForm> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Student Registration Form",
          style:
              GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: CustomFormFields(
                enabled: true,
                labelColor: Colors.black,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: 14,
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
            ),
            SizedBox(width: 10),
            Expanded(
              child: CustomFormFields(
                enabled: true,
                labelColor: Colors.black,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: 14,
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
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "Enter College/University Name",
          maxLines: 1,
          readOnly: false,
          label: 'Enter College/University Name',
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter Hospital Name';
            }
            return null;
          },
        ),
        SizedBox(height: 20),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "Enter Email",
          maxLines: 1,
          readOnly: false,
          label: 'Email',
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
              fontSize: kFourteenFont, color: KText, fontWeight: kFW500),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: kblack.withOpacity(0.4)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 2,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: TextFormField(
            obscureText: passwordVisible,
            style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              border: InputBorder.none,
              hintText: "**************",
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              hintStyle: GoogleFonts.roboto(
                color: Colors.grey.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OthersRegistrationForm extends StatefulWidget {
  const OthersRegistrationForm({Key? key}) : super(key: key);

  @override
  State<OthersRegistrationForm> createState() => _OthersRegistrationFormState();
}

class _OthersRegistrationFormState extends State<OthersRegistrationForm> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Others Registration Form",
          style:
              GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: CustomFormFields(
                enabled: true,
                labelColor: Colors.black,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: 14,
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
            ),
            SizedBox(width: 10),
            Expanded(
              child: CustomFormFields(
                enabled: true,
                labelColor: Colors.black,
                obscureText: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                fontSize: 14,
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
            ),
          ],
        ),
        // SizedBox(
        //   height: 20.h,
        // ),
        // CustomFormFields(
        //   enabled: true,
        //   labelColor: Colors.black,
        //   obscureText: false,
        //   contentPadding:
        //       const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        //   fontSize: 14,
        //   fontWeight: FontWeight.w500,
        //   hintText: "Enter Hospital Name",
        //   maxLines: 1,
        //   readOnly: false,
        //   label: 'Hospital Name',
        //   validator: (value) {
        //     if (value!.isEmpty) {
        //       return 'Please enter correcr Name';
        //     }
        //     return null;
        //   },
        // ),
        SizedBox(height: 20.h),
        CustomFormFields(
          enabled: true,
          labelColor: Colors.black,
          obscureText: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          hintText: "Enter Email",
          maxLines: 1,
          readOnly: false,
          label: 'Email',
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
              fontSize: kFourteenFont, color: KText, fontWeight: kFW500),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: kblack.withOpacity(0.4)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 2,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: TextFormField(
            obscureText: passwordVisible,
            style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              border: InputBorder.none,
              hintText: "**************",
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              hintStyle: GoogleFonts.roboto(
                color: Colors.grey.withOpacity(0.5),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
