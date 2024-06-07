import 'package:nuhvinconnect/untils/export_file.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Kwhite,
        leading: CircleAvatar(
          backgroundColor: Kwhite,
          radius: 35.r,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200.r),
            child: Image.asset(
              "assets/images/user.png",
              // height: 150.h,
              height: 35.h,
              width: 35.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          "Chat",
          style: GoogleFonts.roboto(
              fontSize: 20.sp, color: KdarkText, fontWeight: kFW600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                    hintText: " Search",
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
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 11,
                  itemBuilder: (context, index) {
                    return 
                    Container(
                      margin: EdgeInsets.only(bottom: 12.h),
                      width: double.infinity,
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Ktextcolor.withOpacity(0.5),
                            blurRadius: 0.5.r,
                            offset: Offset(1, 1),
                            spreadRadius: 0.5.r,
                          )
                        ],
                        color: Kwhite,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: kOrange,
                            radius: 15.r,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200.r),
                              child: Image.asset(
                                "assets/images/user.png",
                                color: kGradientOne,
                                // height: 150.h,
                                height: 35.h,
                                width: 35.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 1.35,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 170.w,
                                      child: Text(
                                        "Meeting with Cherry.",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                            fontSize: kSixteenFont,
                                            color: KdarkText,
                                            fontWeight: kFW500),
                                      ),
                                    ),
                                    Text(
                                      "06/06/2024",
                                      style: GoogleFonts.roboto(
                                          fontSize: kTwelveFont,
                                          color: KText,
                                          fontWeight: kFW500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              SizedBox(
                                width: 250.w,
                                child: Text(
                                  "You: Your Meeting is created with meeting link...",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                      fontSize: kTwelveFont,
                                      color: KText,
                                      fontWeight: kFW500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                
                  })
            ],
          ),
        ),
      ),
    );
  }
}
