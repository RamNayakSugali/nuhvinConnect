import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Quizresult extends StatefulWidget {
  const Quizresult({super.key});

  @override
  State<Quizresult> createState() => _QuizresultState();
}

class _QuizresultState extends State<Quizresult> {
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
          "Quizz Result",
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
                padding: EdgeInsets.all(15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: kblack,
                ),
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 6.0,
                          percent: 0.8,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '4/5',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Kwhite,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                'Your Score',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Kwhite,
                                ),
                              ),
                            ],
                          ),
                          progressColor: kOrange,
                          backgroundColor: kblack,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: "Congratulations!\nYou have",
                          style: GoogleFonts.roboto(
                              height: 1.5,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Kwhite),
                          children: [
                            TextSpan(
                              text: " passed",
                              style: GoogleFonts.roboto(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green),
                            ),
                            TextSpan(
                              text: " this test with",
                              style: GoogleFonts.roboto(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Kwhite),
                            ),
                            TextSpan(
                              text: " 80%",
                              style: GoogleFonts.roboto(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: kOrange),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.green,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "4",
                            style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Kwhite,
                            ),
                          ),
                          Text(
                            "correct answers",
                            style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Kwhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: KRed.withOpacity(0.6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1",
                            style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Kwhite,
                            ),
                          ),
                          Text(
                            "wrong answer",
                            style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Kwhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: kyellow,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: kblack,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "12m 20sec",
                            style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: kblack,
                            ),
                          ),
                          Text(
                            "Total time",
                            style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: kblack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: kCustomBlue.withOpacity(0.6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: Kwhite,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "2m 28sec",
                            style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Kwhite,
                            ),
                          ),
                          Text(
                            "Avg Time / Answer",
                            style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Kwhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Kwhite,
                    boxShadow: [
                      BoxShadow(
                          color: kblack.withOpacity(0.2),
                          spreadRadius: 1.0,
                          blurRadius: 1.0,
                          offset: Offset(1.0, 1.0))
                    ]),
                child: Center(
                    child: Text(
                  "Check Answers",
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp, fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: kOrange.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                          color: kblack.withOpacity(0.2),
                          spreadRadius: 1.0,
                          blurRadius: 1.0,
                          offset: Offset(1.0, 1.0))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Try Quiz Again",
                      style: GoogleFonts.roboto(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
