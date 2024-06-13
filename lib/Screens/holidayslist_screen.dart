import 'package:flutter/material.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class Holidayslist extends StatefulWidget {
  const Holidayslist({super.key});

  @override
  State<Holidayslist> createState() => _HolidayslistState();
}

class _HolidayslistState extends State<Holidayslist> {
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
            "Holidays List",
            style: GoogleFonts.roboto(
                fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(15.w),
            child: ListView.builder(
                itemCount: 20,
                //   shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.w),
                    padding: EdgeInsets.all(13.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: kblack.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10.r),
                      //gradient: LinearGradient(colors: [Kgreen])),
                      // color: Colors.green,
                      color: Kwhite,
                      boxShadow: [
                        BoxShadow(
                          color: Ktextcolor.withOpacity(0.5),
                          blurRadius: 0.5.r,
                          offset: Offset(1, 1),
                          spreadRadius: 0.5.r,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bakrid/Eid ul-Adha",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                  fontSize: kSixteenFont,
                                  color: kOrange,
                                  fontWeight: kFW500),
                            ),
                            Text(
                              "Thursday",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                  fontSize: kFourteenFont,
                                  color: KdarkText.withOpacity(0.5),
                                  fontWeight: kFW400),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "29 Jun",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                  fontSize: kSixteenFont,
                                  color: KdarkText,
                                  fontWeight: kFW500),
                            )
                          ],
                        ),
                        // Image.asset(
                        //   "assets/images/eid.jpg",
                        //   height: 20.h,
                        //   width: 20.w,
                        // )
                      ],
                    ),
                  );
                })));
  }
}
