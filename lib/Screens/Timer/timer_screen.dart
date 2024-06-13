import 'package:nuhvinconnect/untils/export_file.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
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
          "Timer",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: GoogleFonts.roboto(
                        fontSize: 20.sp, color: KdarkText, fontWeight: kFW400),
                  ),
                  Text(
                    "00m 00s",
                    style: GoogleFonts.roboto(
                        fontSize: 20.sp, color: KdarkText, fontWeight: kFW400),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 35.w,
                          padding: EdgeInsets.all(10.r),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: kBackGroundWhite,
                            borderRadius: BorderRadius.circular(5.r),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.1,
                                blurRadius: 0.1,
                                offset: const Offset(0, 2),
                                color: Ktextcolor.withOpacity(0.25),
                              )
                            ],
                          ),
                          child: Text(
                            "C",
                            style: GoogleFonts.roboto(
                                fontSize: 13.sp,
                                color: Kwhite,
                                fontWeight: kFW500),
                          )),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Default",
                            style: GoogleFonts.roboto(
                                fontSize: kSixteenFont,
                                color: KdarkText,
                                fontWeight: kFW400),
                          ),
                          Text(
                            "Default",
                            style: GoogleFonts.roboto(
                                fontSize: 11.sp,
                                color: KlightText,
                                fontWeight: kFW400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "00m 00s",
                    style: GoogleFonts.roboto(
                        fontSize: kSixteenFont,
                        color: KdarkText,
                        fontWeight: kFW400),
                  ),
                ],
              ),
              SizedBox(
                height: 200.h,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(kStartScreen);
                },
                child: CircleAvatar(
                  backgroundColor: Kwhite,
                  radius: 50.r,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200.r),
                    child: Image.asset(
                      "assets/images/play.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
