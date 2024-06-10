import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class Quizstart extends StatefulWidget {
  const Quizstart({super.key});

  @override
  State<Quizstart> createState() => _QuizstartState();
}

class _QuizstartState extends State<Quizstart> {
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
          "Start Quizz",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.w),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(bottom: 80.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Put your understanding of this concept to test \nby answering a few MCQs",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: kblack.withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            "assets/images/physics.jpeg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            // height: 200.h,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.r),
                                bottomRight: Radius.circular(10.r),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Subject: ",
                                    style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Physics",
                                        style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "Chapter: ",
                                    style: GoogleFonts.roboto(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Electromagnetism",
                                        style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Row(
                  //   children: [
                  //     Text("Total Questions : "),
                  //     SizedBox(
                  //       width: 10.w,
                  //     ),
                  //     Text("15")
                  //   ],
                  // )
                  RichText(
                      text: TextSpan(
                          text: "Total Questions : ",
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: kblack.withOpacity(0.6)),
                          children: [
                        TextSpan(
                            text: "05",
                            style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kblack))
                      ])),
                  SizedBox(
                    height: 15.h,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Total Time : ",
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: kblack.withOpacity(0.6)),
                          children: [
                        TextSpan(
                            text: "15 min",
                            style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kblack))
                      ])),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Instructions",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        color: kblack,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                      "Before starting the quiz, please ensure you are in a quiet environment to minimize distractions. Carefully read each question before selecting your answer, as you have 30 minutes to complete the quiz. Each question has only one correct answer unless otherwise stated. Use the Next button to navigate through the questions and the Back button if you need to review your answers. There is no negative marking for incorrect answers, so it is beneficial to attempt every question. Be sure to submit your answers before the time runs out. Good luck! as you have 30 minutes to complete the quiz. Each question has only one correct answer unless otherwise stated. Use the Next button to navigate through the questions and the Back button if you need to review your answers. There is no negative marking for incorrect answers, so it is beneficial to attempt every question. Be sure to submit your answers before the time runs out. Good luck!"),
                  SizedBox(
                    height: 80.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.all(15.w),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: kblack.withOpacity(0.6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Kwhite),
                  color: kblack.withOpacity(0.7)),
              child: Row(
                children: [
                  Icon(
                    Icons.restart_alt,
                    color: Kwhite,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "15:00",
                    style: GoogleFonts.roboto(color: Kwhite),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Start Quizz"))
          ],
        ),
      ),
    );
  }
}
