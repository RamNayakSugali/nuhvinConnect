// import 'package:nuhvinbloodbank/untils/export_file.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class Routes {
  static List<GetPage<dynamic>> routes = [
    GetPage(
        name: kSplashScreen,
        transition: Transition.rightToLeft,
        page: () => SplashScreen()),
    GetPage(
        name: kDashboardScreen,
        transition: Transition.rightToLeft,
        page: () => Dashboard()),
    GetPage(
        name: kReportsScreen,
        transition: Transition.rightToLeft,
        page: () => Reports()),
    GetPage(
        name: ktaskScreen,
        transition: Transition.rightToLeft,
        page: () => Tasks()),
    GetPage(
        name: kMeetScreen,
        transition: Transition.rightToLeft,
        page: () => MeetScreen()),
    GetPage(
        name: kTimerScreen,
        transition: Transition.rightToLeft,
        page: () => TimerScreen()),
    GetPage(
        name: kStartScreen,
        transition: Transition.rightToLeft,
        page: () => StartTimer()),
    GetPage(
        name: kManualTimeScreen,
        transition: Transition.rightToLeft,
        page: () => ManualTime()),
    GetPage(
        name: kChatScreen,
        transition: Transition.rightToLeft,
        page: () => ChatScreen()),
    GetPage(
        name: kNewChatScreen,
        transition: Transition.rightToLeft,
        page: () => NewChatScreen()),
    GetPage(
        name: kProfileScreen,
        transition: Transition.rightToLeft,
        page: () => Profile()),
    GetPage(
        name: kSettingsScreen,
        transition: Transition.rightToLeft,
        page: () => SettingsScreen()),
    GetPage(
        name: kFeedbackScreen,
        transition: Transition.rightToLeft,
        page: () => FeedBack()),
    GetPage(
        name: kDataScreen,
        transition: Transition.rightToLeft,
        page: () => DataScreen()),
    GetPage(
        name: kMessagingScreen,
        transition: Transition.rightToLeft,
        page: () => Messaging()),
    GetPage(
        name: kSignUpScreen,
        transition: Transition.rightToLeft,
        page: () => SignUp()),
    GetPage(
        name: kSignInScreen,
        transition: Transition.rightToLeft,
        page: () => SignIn()),
    GetPage(
        name: kNavigationScreen,
        transition: Transition.rightToLeft,
        page: () => Bottom_navigation()),
    GetPage(
        name: kForgotPasswordScreen,
        transition: Transition.rightToLeft,
        page: () => ForgotPassword()),
  ];
}