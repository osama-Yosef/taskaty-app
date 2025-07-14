import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Taskati_app/wedgit/costum_box.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        title: Center(
          child: Text(
            "Add Task",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CostumBox(title: 'Title', hintText: 'Enter title'),
            SizedBox(height: 10.h),
            CostumBox(title: 'Description', hintText: 'Enter Description', maxLines: 4,),
            SizedBox(height: 10.h),
            CostumBox(title: "Data", hintText: "24-11-2025", suffixIcon: Icon(Icons.calendar_month_outlined),),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CostumBox(title: "Start Time", hintText: "2:35 AM", suffixIcon: Icon(Icons.access_time),),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CostumBox(title: "End Time", hintText: "4:50 AM", suffixIcon: Icon(Icons.access_time),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              "Colar",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 20.r,
                  child: Icon(Icons.check, color: Colors.white),
                ),
                SizedBox(width: 4.w),
                CircleAvatar(backgroundColor: Colors.blue, radius: 20.r),
                SizedBox(width: 4.w),
                CircleAvatar(backgroundColor: Colors.red, radius: 20.r),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(right: 20.sp, left: 15.sp, bottom: 15.sp),
          margin: EdgeInsets.only(right: 15.sp, left: 15.sp, bottom: 15.sp),
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.r),
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              "Add Task",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
