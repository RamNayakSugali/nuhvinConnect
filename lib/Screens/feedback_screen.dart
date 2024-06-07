import 'package:nuhvinconnect/untils/export_file.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/feedback_bg.png",
          ),
          Container(
            margin: EdgeInsets.only(top: 60.h, left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "NUHVIN CONNECT",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: 21.sp, color: kOrange, fontWeight: kFW400),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.close,
                        color: KText,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Text(
                      "Hi Ram",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: 21.sp,
                          color: KdarkText,
                          fontWeight: kFW400),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    Image.asset(
                      "assets/images/hi.png",
                      height: 16.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Ask us anything or share your feedback",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: 11.sp, color: KdarkText, fontWeight: kFW500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  width: double.infinity,
                  padding: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                    border: Border.all(color: KText),
                    boxShadow: [
                      BoxShadow(
                        color: Ktextcolor.withOpacity(0.5),
                        blurRadius: 0.5.r,
                        offset: Offset(1, 1),
                        spreadRadius: 0.5.r,
                      )
                    ],
                    color: Kwhite,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Another conversation",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                            fontSize: kSixteenFont,
                            color: KdarkText,
                            fontWeight: kFW400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 100.w,
                                child: CircleAvatar(
                                  backgroundColor: kOrange,
                                  radius: 20.r,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(200.r),
                                    child: Image.asset(
                                      "assets/images/naruto.png",

                                      // height: 150.h,
                                      height: 38.h,
                                      width: 38.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20.w,
                                child: CircleAvatar(
                                  backgroundColor: kOrange,
                                  radius: 20.r,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(200.r),
                                    child: Image.asset(
                                      "assets/images/naruto_2.png",

                                      // height: 150.h,
                                      height: 38.h,
                                      width: 38.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 40.w,
                                child: CircleAvatar(
                                  backgroundColor: kOrange,
                                  radius: 20.r,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(200.r),
                                    child: Image.asset(
                                      "assets/images/naruto_2.png",

                                      // height: 150.h,
                                      height: 38.h,
                                      width: 38.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170.w,
                                child: Text(
                                  "Our casual reply time",
                                  style: GoogleFonts.roboto(
                                      fontSize: kSixteenFont,
                                      color: KdarkText,
                                      fontWeight: kFW400),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/lclock.png",

                                    // height: 150.h,
                                    height: 20.h,
                                    width: 20.w,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 7.w,
                                  ),
                                  Text(
                                    "1 day",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.roboto(
                                        fontSize: kTwelveFont,
                                        color: KText,
                                        fontWeight: kFW500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                  left: 30.w,
                                  right: 30.w,
                                  top: 13.h,
                                  bottom: 13.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: kOrange,
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.5,
                                    blurRadius: 3,
                                    offset: const Offset(0, 2),
                                    color: Ktextcolor.withOpacity(0.25),
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/telegram.png",
                                    height: 20.h,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    "Send us a message",
                                    style: GoogleFonts.roboto(
                                        fontSize: 13.sp,
                                        color: Kwhite,
                                        fontWeight: kFW500),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "See all your conversations",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                            fontSize: kSixteenFont,
                            color: kOrange,
                            fontWeight: kFW400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12.h),
                  width: double.infinity,
                  padding: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                    border: Border.all(color: KText),
                    boxShadow: [
                      BoxShadow(
                        color: Ktextcolor.withOpacity(0.5),
                        blurRadius: 0.5.r,
                        offset: Offset(1, 1),
                        spreadRadius: 0.5.r,
                      )
                    ],
                    color: Kwhite,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Useful resources",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                            fontSize: kSixteenFont,
                            color: KdarkText,
                            fontWeight: kFW400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/question.png",
                            height: 16.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Help Center",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                                fontSize: kSixteenFont,
                                color: KdarkText,
                                fontWeight: kFW400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/pencil.png",
                            height: 16.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Nuhvin Task",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                                fontSize: kSixteenFont,
                                color: KdarkText,
                                fontWeight: kFW400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/announce.png",
                            height: 16.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Announcement",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                                fontSize: kSixteenFont,
                                color: KdarkText,
                                fontWeight: kFW400),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
