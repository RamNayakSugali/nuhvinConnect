import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class CourseOneDescription extends StatefulWidget {
  const CourseOneDescription({super.key});

  @override
  State<CourseOneDescription> createState() => _CourseOneDescriptionState();
}

class _CourseOneDescriptionState extends State<CourseOneDescription> {
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
          "Course Description",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.h),
                margin: EdgeInsets.only(bottom: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  // border: Border.all(color: kblack.withOpacity(0.3)),
                  color: kblack.withOpacity(0.8),
                  boxShadow: [
                    BoxShadow(
                      color: Ktextcolor.withOpacity(0.5),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: KTextgery,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Kwhite,
                          )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
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
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "English",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Kwhite),
                              ),
                              Text(
                                "From Grade 1",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: Kwhite.withOpacity(0.7)),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Price : 200 EGP",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: Kwhite,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: kOrange,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    "3.9",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Kwhite),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "By Vinay Kumar",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14.sp,
                                        color: Kwhite.withOpacity(0.8),
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
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
                        children: [
                          CircleAvatar(
                              radius: 25.r,
                              backgroundColor: kOrange.withOpacity(0.6),
                              child: Center(
                                  child: Icon(
                                Icons.play_arrow_sharp,
                                color: Kwhite,
                              ))),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chapter 1 (Chapter name)",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "8 Lessons",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: kblack.withOpacity(0.4),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "By Vinay Kumar",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: kblack.withOpacity(0.4),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
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
                        children: [
                          CircleAvatar(
                              radius: 25.r,
                              backgroundColor: kOrange.withOpacity(0.6),
                              child: Center(
                                  child: Icon(
                                Icons.play_arrow_sharp,
                                color: Kwhite,
                              ))),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chapter 2 (Chapter name)",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "8 Lessons",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: kblack.withOpacity(0.4),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "By Vinay Kumar",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: kblack.withOpacity(0.4),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
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
                        children: [
                          CircleAvatar(
                              radius: 25.r,
                              backgroundColor: kOrange.withOpacity(0.6),
                              child: Center(
                                  child: Icon(
                                Icons.play_arrow_sharp,
                                color: Kwhite,
                              ))),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chapter 3 (Chapter name)",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "8 Lessons",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: kblack.withOpacity(0.4),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "By Vinay Kumar",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: kblack.withOpacity(0.4),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
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
                        children: [
                          CircleAvatar(
                              radius: 25.r,
                              backgroundColor: kOrange.withOpacity(0.6),
                              child: Center(
                                  child: Icon(
                                Icons.play_arrow_sharp,
                                color: Kwhite,
                              ))),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chapter 4 (Chapter name)",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "8 Lessons",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: kblack.withOpacity(0.4),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "By Vinay Kumar",
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: kblack.withOpacity(0.4),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: kOrange.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "Buy this course -> 200 EGP",
                    style: GoogleFonts.roboto(color: kblack.withOpacity(0.6)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
