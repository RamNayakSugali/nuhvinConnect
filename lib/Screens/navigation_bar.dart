import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class Bottom_navigation extends StatefulWidget {
  const Bottom_navigation({super.key});

  @override
  State<Bottom_navigation> createState() => _Bottom_navigationState();
}

class _Bottom_navigationState extends State<Bottom_navigation> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;
  DateTime timeBackPressed = DateTime.now();
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Are you sure?',
              style: GoogleFonts.roboto(
                  fontSize: kEighteenFont,
                  fontWeight: kFW600,
                  color: Ktextcolor),
            ),
            content: Text(
              'Do you want to exit this App',
              style: GoogleFonts.roboto(
                  fontSize: 13.sp, fontWeight: kFW600, color: KText),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  'No',
                  style: GoogleFonts.roboto(
                      fontSize: kTwelveFont,
                      fontWeight: kFW600,
                      color: KdarkText),
                ),
              ),
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                // <-- SEE HERE
                child: Text(
                  'Yes',
                  style: GoogleFonts.roboto(
                      fontSize: kTwelveFont,
                      fontWeight: kFW600,
                      color: kOrange),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
            extendBody: true,
            body: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (int index) {
                setState(
                  () {
                    _pageIndex = index;
                  },
                );
                if (index == 2) {}
              },
              children: _buildThreePageViewChildren(),
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.all(5.r),
              padding: EdgeInsets.all(10.r),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: Kwhite,
                  selectedItemColor: kOrange,
                  unselectedItemColor: KText,
                  selectedLabelStyle:
                      GoogleFonts.roboto(fontWeight: FontWeight.w600),
                  type: BottomNavigationBarType.fixed,
                  items: _buildThreeItems(),
                  onTap: (int index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  },
                  currentIndex: _pageIndex,
                ),
              ),
            )));
  }

  List<Widget> _buildThreePageViewChildren() {
    return <Widget>[Dashboard(), MeetScreen(), Reports(), Tasks(), Profile()];
  }

  List<BottomNavigationBarItem> _buildThreeItems() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: Image.asset(
            "assets/images/miniDash.png",
            color: _pageIndex == 0 ? kOrange : KText,
            width: 19.w,
          ),
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: Image.asset(
            "assets/images/minimeet.png",
            color: _pageIndex == 1 ? kOrange : KText,
            width: 19.w,
          ),
        ),
        label: 'Meet',
      ),
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: Image.asset(
            "assets/images/miniReports.png",
            color: _pageIndex == 2 ? kOrange : KText,
            width: 19.w,
          ),
        ),
        label: 'Reports',
      ),
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: Image.asset(
            "assets/images/miniTask.png",
            color: _pageIndex == 3 ? kOrange : KText,
            width: 19.w,
          ),
        ),
        label: 'Tasks',
      ),
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: Image.asset(
            "assets/images/miniProfile.png",
            color: _pageIndex == 4 ? kOrange : KText,
            width: 19.w,
          ),
        ),
        label: 'Profile',
      ),
    ];
  }
}
