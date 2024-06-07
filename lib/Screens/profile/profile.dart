import 'package:nuhvinconnect/untils/export_file.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          "Profile",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Kwhite,
                radius: 50.r,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.r),
                  child: Image.asset(
                    "assets/images/user.png",
                    // height: 150.h,
                    height: 100.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text(
                "Ram Nayak",
                style: GoogleFonts.roboto(
                    fontSize: 20.sp, color: KdarkText, fontWeight: kFW400),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "ID Number",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: kFourteenFont,
                  //  letterSpacing: 1,
                  color: kOrange,
                  fontWeight: kFW500),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "NC10023",
              style: GoogleFonts.roboto(
                  fontSize: 15.sp, color: KdarkText, fontWeight: kFW400),
            ),
            Divider(),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Email",
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                  fontSize: kFourteenFont,
                  //  letterSpacing: 1,
                  color: kOrange,
                  fontWeight: kFW500),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "ramnayak777@gmail.com",
              style: GoogleFonts.roboto(
                  fontSize: 15.sp, color: KdarkText, fontWeight: kFW400),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
