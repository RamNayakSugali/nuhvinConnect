import 'package:nuhvinconnect/untils/export_file.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 7), () async {
      Get.toNamed(kSignUpScreen);
      // Get.toNamed(kNavigationScreen);
      // Get.toNamed(kDashboardScreen);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      body: Container(
        margin: EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              " Nuhvin  ",
              style: GoogleFonts.roboto(
                  fontSize: 32, color: kOrange, fontWeight: kFW400),
            ),

            SizedBox(
              height: 60.h,
              child: DefaultTextStyle(
                style: GoogleFonts.bakbakOne(
                    fontSize: 32, fontWeight: kFW400, color: kGradientOne),
                child: AnimatedTextKit(
                  totalRepeatCount: 4,
                  animatedTexts: [
                    RotateAnimatedText('CONNECTING'),
                    RotateAnimatedText('ALL'),
                    RotateAnimatedText('TOGETHER'),
                  ],
                ),
              ),
            ),
            // GradientText(
            //   'Connecting',
            //   style: TextStyle(
            //     fontSize: 35.sp,
            //   ),
            //   colors: const [
            //     kGradientOne,
            //     kGradientTwo,
            //   ],
            // ),
          ],
        ),
      ),
    );
    ;
  }
}
