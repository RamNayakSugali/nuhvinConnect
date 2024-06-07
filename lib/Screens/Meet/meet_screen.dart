import 'package:nuhvinconnect/untils/export_file.dart';

class MeetScreen extends StatefulWidget {
  const MeetScreen({super.key});

  @override
  State<MeetScreen> createState() => _MeetScreenState();
}

class _MeetScreenState extends State<MeetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 16.w,
        backgroundColor: Kwhite,
        // leading: IconButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        //   icon: Icon(Icons.arrow_back_ios, size: 25.sp, color: KdarkText),
        // ),
        title: Text(
          "Meet",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45.h,
              margin: EdgeInsets.only(top: 15.h),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Ktextcolor.withOpacity(0.3),
                    blurRadius: 0.5.r,
                    spreadRadius: 0.5.r,
                  )
                ],
                color: Kwhite,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TextFormField(
                style: GoogleFonts.roboto(
                    fontSize: 13.sp,
                    fontWeight: kFW500,
                    color: kblack.withOpacity(0.8)),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Ktextcolor.withOpacity(0.7),
                  ),
                  focusColor: Kwhite.withOpacity(0.5),
                  filled: true,
                  hintText: " Search  Users",
                  //"Search Categories"

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Ktextcolor.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Ktextcolor.withOpacity(0.3), width: 0.5),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Ktextcolor.withOpacity(0.3), width: 0.5),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Ktextcolor.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kOrange.withOpacity(0.3), width: 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  fillColor: Kwhite,
                  // suffixIcon: suffix,
                  // prefixIcon: prefix,
                  // hintText: hintText,

                  //make hint text
                  hintStyle: GoogleFonts.roboto(
                    color: KTextgery.withOpacity(0.5),
                    fontSize: 12.sp,
                    fontWeight: kFW500,
                  ),

                  //create lable
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Do more in Meet",
              style: GoogleFonts.roboto(
                  fontSize: 20.sp, color: KdarkText, fontWeight: kFW400),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        left: 15.w, right: 15.w, top: 7.h, bottom: 7.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kOrange,
                          kOrange.withOpacity(0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.1,
                          blurRadius: 0.2,
                          offset: const Offset(0, 2),
                          color: Ktextcolor.withOpacity(0.25),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/calender_pick.png",
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "New Event",
                          style: GoogleFonts.roboto(
                              fontSize: kFourteenFont,
                              color: KdarkText,
                              fontWeight: kFW400),
                        ),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(
                        left: 32.w, right: 32.w, top: 6.h, bottom: 6.h),
                    //   5px, 13px, 5px, 13px
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kOrange,
                          kOrange.withOpacity(0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.1,
                          blurRadius: 0.2,
                          offset: const Offset(0, 2),
                          color: Ktextcolor.withOpacity(0.25),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/video.png",
                          height: 22.h,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Meet",
                          style: GoogleFonts.roboto(
                              fontSize: kFourteenFont,
                              color: KdarkText,
                              fontWeight: kFW400),
                        ),
                      ],
                    )),
                Container(
                    // padding: EdgeInsets.only(
                    //     left: 15.w, right: 15.w, top: 7.h, bottom: 7.h),
                    padding: EdgeInsets.only(
                        left: 32.w, right: 32.w, top: 6.h, bottom: 6.h),
                    //   5px, 13px, 5px, 13px
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kOrange,
                          kOrange.withOpacity(0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.1,
                          blurRadius: 0.2,
                          offset: const Offset(0, 2),
                          color: Ktextcolor.withOpacity(0.25),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/chat.png",
                          height: 22.h,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Chat",
                          style: GoogleFonts.roboto(
                              fontSize: kFourteenFont,
                              color: KdarkText,
                              fontWeight: kFW400),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Create your own",
              style: GoogleFonts.roboto(
                  fontSize: 20.sp, color: KdarkText, fontWeight: kFW400),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
                // padding: EdgeInsets.only(
                //     left: 15.w, right: 15.w, top: 7.h, bottom: 7.h),

                //   5px, 13px, 5px, 13px
                padding: EdgeInsets.all(10.r),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kBackGroundWhite,
                  borderRadius: BorderRadius.circular(5.r),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0.1,
                      blurRadius: 0.2,
                      offset: const Offset(0, 2),
                      color: Ktextcolor.withOpacity(0.25),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        color: Kwhite,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: CircleAvatar(
                        radius: 12.r,
                        backgroundColor: kBackGroundWhite,
                        child: Icon(
                          Icons.add,
                          color: Kwhite,
                          size: 15,
                        ),
                      ),
                    ),
                    Text(
                      "        Create from scracth ",
                      style: GoogleFonts.roboto(
                          fontSize: 15.sp,
                          color: KdarkText,
                          fontWeight: kFW400),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
