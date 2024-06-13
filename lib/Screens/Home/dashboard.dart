import 'package:nuhvinconnect/untils/export_file.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawerEdgeDragWidth: MediaQuery.of(context).size.width / 2,
      backgroundColor: Kwhite,
      drawer: Drawer(
        width: MediaQuery.of(context).size.width / 1.2,
        backgroundColor: Kwhite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg_gradient.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Kwhite,
                      radius: 35.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35.0),
                        child: Image.asset(
                          "assets/images/user.png",
                          height: 70.0,
                          width: 70.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      "Ram Nayak",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Kwhite,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  Get.toNamed(kTimerScreen);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: Kwhite,
                    boxShadow: [
                      BoxShadow(
                        color: Ktextcolor.withOpacity(0.2),
                        blurRadius: 1,
                        offset: Offset(0, 0),
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/People.png",
                      height: 16.0,
                    ),
                    title: Text(
                      "Timer",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: KdarkText,
                      ),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: kOrange,
                      size: 28.0,
                    ),
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    minLeadingWidth: 0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  Get.toNamed(kManualTimeScreen);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: Kwhite,
                    boxShadow: [
                      BoxShadow(
                        color: Ktextcolor.withOpacity(0.2),
                        blurRadius: 1,
                        offset: Offset(0, 0),
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/People.png",
                      height: 16.0,
                    ),
                    title: Text(
                      "Manual Timer",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: KdarkText,
                      ),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: kOrange,
                      size: 28.0,
                    ),
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    minLeadingWidth: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kTimerScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/People.png",
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Timer",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kManualTimeScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/People.png",
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Manual Timer",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kChatScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/chat.png",
                        color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Chat",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kNewChatScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/chat.png",
                        color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "New Chat",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              // InkWell(
              //   onTap: () {
              //     Get.toNamed(kProfileScreen);
              //   },
              //   child: Container(
              //     margin: EdgeInsets.only(left: 15.h, right: 15.w),
              //     decoration: BoxDecoration(
              //         color: Kwhite,
              //         boxShadow: [
              //           BoxShadow(
              //             color: Ktextcolor.withOpacity(0.2),
              //             blurRadius: 1,
              //             offset: const Offset(0, 0),
              //             spreadRadius: 1,
              //           )
              //         ],
              //         borderRadius: BorderRadius.circular(10.r)),
              //     //margin: EdgeInsets.all(13.r),
              //     child: ListTile(
              //         visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              //         leading: Image.asset(
              //           "assets/images/chat.png",
              //           color: KText,
              //           height: 16.h,
              //         ),
              //         minLeadingWidth: 0,
              //         title: Text(
              //           "Profile",
              //           style: GoogleFonts.roboto(
              //               fontSize: kFourteenFont,
              //               fontWeight: kFW600,
              //               color: KdarkText),
              //         ),
              //         trailing: Icon(
              //           Icons.keyboard_arrow_right,
              //           color: kOrange,
              //           size: 28.sp,
              //         )
              //         // Image.asset(
              //         //   Actions[i]["Subimage"],
              //         //   height: 30.h,
              //         // ),
              //         ),
              //   ),
              // ),

              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kSettingsScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/settings2.png",
                        color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Settings",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kFeedbackScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/chat.png",
                        color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Feedback",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kApplyLeaveScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/apply_leave.png",
                        // color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Apply Leave",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kQuizhome);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/attendance.png",
                        color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Quiz",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kHolidayScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/attendance.png",
                        color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Holidays List",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kCourseScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/attendance.png",
                        color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Courses",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kAttendaceScreen);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15.h, right: 15.w),
                  decoration: BoxDecoration(
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r)),
                  //margin: EdgeInsets.all(13.r),
                  child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      leading: Image.asset(
                        "assets/images/attendance.png",
                        color: KText,
                        height: 16.h,
                      ),
                      minLeadingWidth: 0,
                      title: Text(
                        "Attendance",
                        style: GoogleFonts.roboto(
                            fontSize: kFourteenFont,
                            fontWeight: kFW600,
                            color: KdarkText),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: kOrange,
                        size: 28.sp,
                      )
                      // Image.asset(
                      //   Actions[i]["Subimage"],
                      //   height: 30.h,
                      // ),
                      ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),

      drawerEnableOpenDragGesture: false,

      appBar: AppBar(
        leadingWidth: 40.w,
        leading: Builder(
            builder: (context) => Container(
                  margin: EdgeInsets.only(left: 16.w),
                  child: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Image.asset(
                      "assets/images/more_horiz.png",

                      // height: 150.h,
                    ),
                  ),
                )
            // IconButton(
            //     icon: Icon(Icons.more_vert),
            //     onPressed: () => Scaffold.of(context).openDrawer()),
            ),
        title: Text(
          "NUHVIN CONNECT",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.r),
        child: Column(
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
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        left: 30.w, right: 30.w, top: 13.h, bottom: 13.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kOrange,
                      borderRadius: BorderRadius.circular(20.r),
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
                          "assets/images/calender_pick.png",
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Schedule Call",
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: KdarkText,
                              fontWeight: kFW500),
                        ),
                      ],
                    )),

                // Container(
                //     padding: EdgeInsets.only(
                //         left: 30.w, right: 30.w, top: 12.h, bottom: 12.h),
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //       color: kOrange,
                //       borderRadius: BorderRadius.circular(20.r),
                //       boxShadow: [
                //         BoxShadow(
                //           spreadRadius: 1.5,
                //           blurRadius: 3,
                //           offset: const Offset(0, 2),
                //           color: Ktextcolor.withOpacity(0.25),
                //         )
                //       ],
                //     ),
                //     child: Row(
                //       children: [
                //         Image.asset(
                //           "assets/images/calender_pick.png",
                //         ),
                //         SizedBox(
                //           width: 5.w,
                //         ),
                //         SizedBox(
                //           width: 100.w,
                //           child: Text(
                //             "Schedule Call",
                //             maxLines: 2,
                //             style: GoogleFonts.roboto(
                //                 fontSize: 13.sp,
                //                 color: KdarkText,
                //                 fontWeight: kFW500),
                //           ),
                //         ),
                //       ],
                //     )),
                Container(
                    padding: EdgeInsets.only(
                        left: 30.w, right: 30.w, top: 12.h, bottom: 12.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: kBackGroundWhite,
                      borderRadius: BorderRadius.circular(20.r),
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
                        Text(
                          "Invite User",
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              color: KdarkText,
                              fontWeight: kFW500),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Image.asset(
                          "assets/images/add_user.png",
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
