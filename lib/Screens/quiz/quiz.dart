import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class Quizhome extends StatefulWidget {
  const Quizhome({super.key});

  @override
  State<Quizhome> createState() => _QuizhomeState();
}

class _QuizhomeState extends State<Quizhome> {
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
          "Quizzes",
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
              "Upcoming quizzes",
              style: GoogleFonts.roboto(
                  fontSize: 18.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: kOrange.withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Kwhite,
                        child: Icon(
                          Icons.book,
                          color: Colors.blue,
                          size: 35.h,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Test Exam",
                            style: GoogleFonts.roboto(
                                fontSize: 15.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "Let's check your \nparticipation",
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                color: kblack.withOpacity(0.4),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Get.toNamed(kQuizstart);
                      },
                      icon: Icon(
                        Icons.arrow_right_outlined,
                        size: 30.h,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "My Quizzes",
              style: GoogleFonts.roboto(
                  fontSize: 17.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: ListView(
              shrinkWrap: false,
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "01",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600, fontSize: 16.sp),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quiz Name",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "score",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    color: kblack.withOpacity(0.5)),
                              )
                            ],
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: 0.5,
                            color: Colors.green,
                          ),
                          Text(
                            '50%',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "02",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600, fontSize: 16.sp),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quiz Name",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "score",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    color: kblack.withOpacity(0.5)),
                              )
                            ],
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: 0.5,
                            color: Colors.green,
                          ),
                          Text(
                            '50%',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "03",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600, fontSize: 16.sp),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quiz Name",
                                style: GoogleFonts.roboto(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "score",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    color: kblack.withOpacity(0.5)),
                              )
                            ],
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: 0.6,
                            color: Colors.green,
                          ),
                          Text(
                            '60%',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
