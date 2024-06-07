import 'package:nuhvinconnect/untils/export_file.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
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
          "Data and Storage",
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
                "Microsoft cloud storage",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: KText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "<0.1 GB of %Gb(0%)",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: KdarkText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 2.h,
                color: KText,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Learn more about cloud storage",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: kCustomBlue, fontWeight: kFW500),
              ),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Teams Local storage",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: KText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "clear temporary files",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 15.sp, color: kCustomBlue, fontWeight: kFW500),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "clear app Data",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 15.sp, color: kCustomBlue, fontWeight: kFW500),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Reset Data Base",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 15.sp, color: kCustomBlue, fontWeight: kFW500),
              ),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Video Calls",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: KText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reduce Data Usage",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: 15.sp, color: KdarkText, fontWeight: kFW500),
                  ),
                  Text(
                    "Never",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: 15.sp, color: KdarkText, fontWeight: kFW500),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Media",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: KText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Image upload Quality",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 15.sp, color: KdarkText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Automatic",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: KText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Search",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: KText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Show History",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 15.sp, color: KdarkText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Clear History",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    fontSize: 13.sp, color: KText, fontWeight: kFW500),
              ),
              SizedBox(
                height: 70.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
