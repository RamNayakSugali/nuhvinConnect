import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class Quizgame extends StatefulWidget {
  const Quizgame({super.key});

  @override
  State<Quizgame> createState() => _QuizgameState();
}

class _QuizgameState extends State<Quizgame> {
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
          "Quizz",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed(kQuizresults);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                //color: kblack.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: kOrange.withOpacity(0.8)),
              ),
              child: Text(
                "Submit",
                style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: kblack),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Pair of Linear Equation in two variables",
                style: GoogleFonts.roboto(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("English / Chapter Name"),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Ktextcolor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text("07:28"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 10.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: LinearProgressIndicator(
                    value: 0.6,
                    color: kOrange.withOpacity(0.7),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: LinearGradient(colors: [
                      kblack.withOpacity(0.5),
                      Colors.grey.withOpacity(0.5)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Q.3/",
                            style: GoogleFonts.roboto(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: Kwhite),
                            children: [
                          TextSpan(
                              text: "5",
                              style: GoogleFonts.roboto(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Kwhite.withOpacity(0.7)))
                        ])),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Graphically the pair of Equations 7x-y=5;21x-3y=10 represents two lines which are",
                      style: GoogleFonts.roboto(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w600,
                          color: Kwhite),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "A.",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Intersect at one point",
                            style: GoogleFonts.roboto(color: Kwhite),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "A.",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Intersect at one point",
                            style: GoogleFonts.roboto(color: Kwhite),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "A.",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Intersect at one point",
                            style: GoogleFonts.roboto(color: Kwhite),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "A.",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Intersect at one point",
                            style: GoogleFonts.roboto(color: Kwhite),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: kCustomBlue,
                    ),
                    child: Text(
                      "Previous",
                      style: TextStyle(color: Kwhite),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: kOrange,
                    ),
                    child: Text("Next"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
