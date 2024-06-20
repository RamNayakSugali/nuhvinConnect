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
                        Text("Project ID : 240501"),
                        Row(
                          children: [
                            Text("Status: "),
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
                    Text("Project Name : NBB Responsive Website"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("Project Name : NBB Responsive Website"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("Start Date : 10 June 2024"),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text("Completion :"),
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
                        Text("Created : "),
                        Container(
                          color: kOrange,
                          child: Text(
                            "14/7/2024",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Deadline : "),
                        Container(
                          color: kOrange,
                          child: Text(
                            "12/12/2024",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Priority : "),
                        Container(
                          color: kOrange,
                          child: Text(
                            "Highest Priority",
                            style: GoogleFonts.roboto(color: Kwhite),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Status : "),
                        Container(
                          color: kOrange,
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
                      Text("Assigned Team"),
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
                              Text("Parvati"),
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
                                  Text("Ram Nayak"),
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
                                  Text("Vinay"),
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
                    Text(
                      "About Client",
                    ),
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
                    Text("Project Activity"),
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
