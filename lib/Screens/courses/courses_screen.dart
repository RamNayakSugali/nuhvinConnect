import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
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
          "My Courses",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Courses",
              style: GoogleFonts.roboto(
                  fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(kCourseDescriptionScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.w),
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        // border: Border.all(color: kblack.withOpacity(0.3)),
                        color: Kwhite,
                        boxShadow: [
                          BoxShadow(
                            color: Ktextcolor.withOpacity(0.5),
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(
                              "assets/images/english.jpeg",
                              height: 100.h,
                              width: 100.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "English",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "From 1",
                                  style: GoogleFonts.roboto(fontSize: 14.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "By Vinay Kumar",
                                  style: GoogleFonts.roboto(fontSize: 14.sp),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        child: SizedBox(
                                          height: 10.h,
                                          child: LinearProgressIndicator(
                                            value: 0.6,
                                            color: kOrange,
                                            backgroundColor: Colors.grey[200],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15.w),
                                    Text(
                                      '60%',
                                      style: TextStyle(color: KdarkText),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    margin: EdgeInsets.only(bottom: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      // border: Border.all(color: kblack.withOpacity(0.3)),
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.5),
                          blurRadius: 1.0.r,
                          spreadRadius: 1.0,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            "assets/images/maths.jpeg",
                            height: 100.h,
                            width: 100.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Maths",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "From 1",
                                style: GoogleFonts.roboto(fontSize: 14.sp),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "By Vinay Kumar",
                                style: GoogleFonts.roboto(fontSize: 14.sp),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.r),
                                      child: SizedBox(
                                        height: 10.h,
                                        child: LinearProgressIndicator(
                                          value: 0.5,
                                          color: kOrange,
                                          backgroundColor: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  Text(
                                    '50%',
                                    style: TextStyle(color: KdarkText),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    margin: EdgeInsets.only(bottom: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      // border: Border.all(color: kblack.withOpacity(0.3)),
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.5),
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            "assets/images/physics.jpeg",
                            height: 100.h,
                            width: 100.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Physics",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "From 1",
                                style: GoogleFonts.roboto(fontSize: 14.sp),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "By Vinay Kumar",
                                style: GoogleFonts.roboto(fontSize: 14.sp),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.r),
                                      child: SizedBox(
                                        height: 10.h,
                                        child: LinearProgressIndicator(
                                          value: 0.7,
                                          color: kOrange,
                                          backgroundColor: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  Text(
                                    '70%',
                                    style: TextStyle(color: KdarkText),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    margin: EdgeInsets.only(bottom: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      // border: Border.all(color: kblack.withOpacity(0.3)),
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.5),
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            "assets/images/arabic.jpeg",
                            height: 100.h,
                            width: 100.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Arabic",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "From 1",
                                style: GoogleFonts.roboto(fontSize: 14.sp),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "By Vinay Kumar",
                                style: GoogleFonts.roboto(fontSize: 14.sp),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.r),
                                      child: SizedBox(
                                        height: 10.h,
                                        child: LinearProgressIndicator(
                                          value: 0.8,
                                          color: kOrange,
                                          backgroundColor: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  Text(
                                    '80%',
                                    style: TextStyle(color: KdarkText),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
