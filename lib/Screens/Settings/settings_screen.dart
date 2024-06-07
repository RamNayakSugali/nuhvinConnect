import 'package:nuhvinconnect/untils/export_file.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
          "Settings",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "General",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: kEighteenFont,
                    color: KdarkText,
                    fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/appearance.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Appearance",
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
                    "assets/images/notifications.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Notifications",
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
              InkWell(
                onTap: () {
                  Get.toNamed(kDataScreen);
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/storage.png",
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Data and Storage",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: kSixteenFont,
                          color: KdarkText,
                          fontWeight: kFW400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Divider(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Ram Nayak",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: kEighteenFont,
                    color: KdarkText,
                    fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/profiles.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Profile",
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
              InkWell(
                onTap: () {
                  Get.toNamed(kMessagingScreen);
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/messenger.png",
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Messaging",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: kSixteenFont,
                          color: KdarkText,
                          fontWeight: kFW400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/calander.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Calender",
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
                    "assets/images/caller.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Calling",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: kSixteenFont,
                        color: KdarkText,
                        fontWeight: kFW400),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Divider(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/questions.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Help and Feedback",
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
                    "assets/images/about.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "About",
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
                    "assets/images/keylock.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Privacy",
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
              InkWell(
                onTap: () {
                  Get.toNamed(kSignInScreen);
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/signout.png",
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Sign Out",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: kSixteenFont,
                          color: KdarkText,
                          fontWeight: kFW400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/dels.png",
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Delete Account",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: kSixteenFont,
                        color: KdarkText,
                        fontWeight: kFW400),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
