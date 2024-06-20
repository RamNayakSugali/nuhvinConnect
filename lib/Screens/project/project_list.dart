import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuhvinconnect/untils/constants.dart';
import 'package:nuhvinconnect/untils/export_file.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({super.key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
            "Projects List",
            style: GoogleFonts.roboto(
              fontSize: 20.sp,
              color: KdarkText,
              fontWeight: kFW600,
            ),
          ),
          bottom: TabBar(
            dividerHeight: 0,
            controller: _tabController,
            indicatorColor: KdarkText,
            labelColor: KdarkText,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Started'),
              Tab(text: 'Approval'),
              Tab(text: 'Completed'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              margin: EdgeInsets.all(15.w),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding: EdgeInsets.all(15.w),
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
                              "NBB Responsive Website",
                              style: GoogleFonts.roboto(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: kblack),
                            ),
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
                        SizedBox(height: 10.h),
                        Text(
                          "Deadline: 17/6/24",
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: kblack.withOpacity(0.6)),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Text(
                              "Progress: ",
                              style: GoogleFonts.roboto(
                                  fontSize: 15.sp, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 5.w),
                            Expanded(
                              child: LinearProgressIndicator(
                                minHeight: 10.h,
                                color: kOrange,
                                value: 0.6,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(kProjectDetails);
                              },
                              child: Container(
                                padding: EdgeInsets.all(5.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: kCustomBlue,
                                ),
                                child: Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Kwhite,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              padding: EdgeInsets.all(5.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: kOrange,
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Kwhite,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              padding: EdgeInsets.all(5.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: Kgreen,
                              ),
                              child: Icon(
                                Icons.delete,
                                color: Kwhite,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Center(child: Text('Started Projects')),
            Center(child: Text('Projects for Approval')),
            Center(child: Text('Completed Projects')),
          ],
        ),
      ),
    );
  }
}
