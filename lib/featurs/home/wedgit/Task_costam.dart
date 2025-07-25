import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_app/featurs/home/model/task_models.dart';

class TaskCostam extends StatelessWidget {
  final TaskModels taskModels;
  const TaskCostam({super.key, required this.taskModels,});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.w),
      decoration: BoxDecoration(
        color: taskModels.TaskColor,
        borderRadius: BorderRadius.circular(15.r),
      ),

      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     taskModels.title,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 15, color: Colors.white),
                      Text(
                        " ${taskModels.startTime} ${taskModels.EndTime}",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text(
                   taskModels.desc,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            VerticalDivider(color: Colors.white, thickness: 2.sp),
             RotatedBox(
              quarterTurns: 3,
              child: Text(TaskModels.stutes??"ToDo",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
