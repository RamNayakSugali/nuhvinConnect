import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
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
          "Projects Details",
          style: GoogleFonts.roboto(
            fontSize: 20.sp,
            color: KdarkText,
            fontWeight: kFW600,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Kwhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Project ID : 240501",
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              "Status: ",
                              style: GoogleFonts.roboto(
                                  fontSize: 15.sp, fontWeight: FontWeight.w500),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                              ),
                              child: Text(
                                "In Active",
                                style: GoogleFonts.roboto(
                                    color: Kwhite,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Project Name : NBB Responsive Website",
                      style: GoogleFonts.roboto(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Project Name : NBB Responsive Website",
                      style: GoogleFonts.roboto(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Start Date : 10 June 2024",
                      style: GoogleFonts.roboto(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Completion :",
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: LinearProgressIndicator(
                            minHeight: 10.h,
                            color: kOrange,
                            value: 0.6,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Kwhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Created : ",
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          color: kOrange,
                          child: Text(
                            "14/7/2024",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deadline : ",
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          color: kyellow,
                          child: Text(
                            "12/12/2024",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Priority : ",
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          color: Colors.blue,
                          child: Text(
                            "Highest Priority",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Status : ",
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          color: Colors.green,
                          child: Text(
                            "working",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Kwhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 2,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Assigned Team",
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.r,
                            backgroundColor: kOrange,
                            child: Text(
                              "image",
                              style: GoogleFonts.roboto(color: Kwhite),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Parvati",
                                style: GoogleFonts.roboto(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text("xyz@gmail.com"),
                              Text("Team Lead"),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        color: kblack.withOpacity(0.2),
                        thickness: 0.7,
                        height: 0.7,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25.r,
                                backgroundColor: kdarkyellow,
                                child: Text(
                                  "image",
                                  style: GoogleFonts.roboto(color: Kwhite),
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ram Nayak",
                                    style: GoogleFonts.roboto(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text("xyz@gmail.com"),
                                ],
                              ),
                            ],
                          ),
                          Text("15 min ago")
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25.r,
                                backgroundColor: kCustomBlue,
                                child: Text(
                                  "image",
                                  style: GoogleFonts.roboto(color: Kwhite),
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Vinay",
                                    style: GoogleFonts.roboto(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text("xyz@gmail.com"),
                                ],
                              ),
                            ],
                          ),
                          Text("15 min ago")
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Kwhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "About Client",
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CircleAvatar(
                      radius: 40.r,
                      backgroundColor: kOrange,
                      child: Text(
                        "image",
                        style: GoogleFonts.roboto(color: Kwhite),
                      ),
                    ),
                    Text(
                      "Parvati",
                      style: GoogleFonts.roboto(
                          fontSize: 17.sp, fontWeight: FontWeight.w500),
                    ),
                    Text("Hyderabad, Telangana"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.blueAccent),
                          child: Text(
                            "Profile",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(color: kblack.withOpacity(0.6))
                              //color: Colors.blueAccent
                              ),
                          child: Text("Message"),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Kwhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Activity",
                      style: GoogleFonts.roboto(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      // padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: kblack.withOpacity(0.6))),
                      child: TextFormField(
                        maxLines: 2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Please type What you want...."),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: kCustomBlue,
                          ),
                          child: Icon(
                            Icons.link,
                            color: Kwhite,
                          ),
                        ),
                        SizedBox(width: 13.w),
                        Container(
                          padding: EdgeInsets.all(5.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: kOrange,
                          ),
                          child: Icon(
                            Icons.camera_enhance_outlined,
                            color: Kwhite,
                          ),
                        ),
                        SizedBox(width: 13.w),
                        Container(
                            padding: EdgeInsets.all(5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Kgreen,
                            ),
                            child: Text(
                              "Add",
                              style: GoogleFonts.roboto(color: Kwhite),
                            )),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
