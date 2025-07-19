import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_app/featurs/Taskati_app/wedgit/chose_coloer.dart';

import '../Taskati_app/wedgit/costum_box.dart';

class AddTask extends StatefulWidget {
   AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  var validitionKey=GlobalKey<FormState>();

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
          child: Form(
            key: validitionKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostumBox(
                  title: 'Title',
                  hintText: 'Enter title',
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return "Erro Enter title";
                    }
                  },
                ),
                SizedBox(height: 10.h),
                CostumBox(
                  title: 'Description',
                  hintText: 'Enter Description',
                  maxLines: 4,
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return "Erro Enter Description";
                    }
                  },
                ),
                SizedBox(height: 10.h),
                CostumBox(
                  title: "Data",
                  hintText: "24-11-2025",
                  suffixIcon: Icon(Icons.calendar_month_outlined),
                  validator: (value) {
                    if (value?.isEmpty ?? false) {
                      return "Erro Enter Data";
                    }
                  },
                  onTap: (){
                    showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2050));
                  },
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CostumBox(
                              title: "Start Time",
                              hintText: "2:35 AM",
                              suffixIcon: Icon(Icons.access_time),
                              validator: (value) {
                                if (value?.isEmpty ?? false) {
                                  return "Erro Enter Start Time";
                                }
                              },
                              onTap: (){
                                showTimePicker(context: context, initialTime: TimeOfDay.now());
                              },
                            ),
                          ],
                        ),
        
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CostumBox(
                            title: "End Time",
                            hintText: "4:50 AM",
                            suffixIcon: Icon(Icons.access_time),
                            validator: (value) {
                              if (value?.isEmpty ?? false) {
                                return "Erro Enter End Time";
                              }
                            },
                          onTap: (){
                            showTimePicker(context: context, initialTime: TimeOfDay.now());
                            }
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                ChoseColoer(),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: InkWell(
        onTap: () {
          validitionKey.currentState?.validate();
        },
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
