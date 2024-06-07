import 'package:nuhvinconnect/untils/export_file.dart';

class Messaging extends StatefulWidget {
  const Messaging({super.key});

  @override
  State<Messaging> createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  bool _switchValue = false;
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
          "Messaging",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chat",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: 13.sp, color: KText, fontWeight: kFW500),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Read receipients",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: 17.sp, color: KdarkText, fontWeight: kFW400),
                ),
                Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                  activeColor: kOrange,
                  activeTrackColor: kOrange.withOpacity(0.5),
                  inactiveThumbColor: KText,
                  inactiveTrackColor: KText.withOpacity(0.5),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Show read receipts for messages you send and receive.You’ll also read receipts for other people in group chats.",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: 11.sp, color: KText, fontWeight: kFW500),
            ),
            SizedBox(height: 30.h),
            Text(
              "Edit pinned chats",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: 17.sp, color: KdarkText, fontWeight: kFW400),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Translation",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: 13.sp, color: KText, fontWeight: kFW500),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/translate.png",
                  height: 24.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Edit pinned chats",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: 17.sp, color: KdarkText, fontWeight: kFW400),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Text(
              "GIPHY",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: 13.sp, color: KText, fontWeight: kFW500),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Send and Receive GIFs",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: 17.sp, color: KdarkText, fontWeight: kFW400),
                ),
                Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                  activeColor: kOrange,
                  activeTrackColor: kOrange.withOpacity(0.5),
                  inactiveThumbColor: KText,
                  inactiveTrackColor: KText.withOpacity(0.5),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "The GIF experience in teams is powered by GIPHY.by using GIFs, you agree to GIPHY”S terms and services and privacy policy",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: 11.sp, color: KText, fontWeight: kFW500),
            ),
            SizedBox(height: 30.h),
            Text(
              "You tube",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: 13.sp, color: KText, fontWeight: kFW500),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Preview Youtube videos",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: 17.sp, color: KdarkText, fontWeight: kFW400),
                ),
                Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                  activeColor: kOrange,
                  activeTrackColor: kOrange.withOpacity(0.5),
                  inactiveThumbColor: KText,
                  inactiveTrackColor: KText.withOpacity(0.5),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "By using the youtube preview experience, you agree to  Google’s Terms of services and Privacy Policy",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: 11.sp, color: KText, fontWeight: kFW500),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
