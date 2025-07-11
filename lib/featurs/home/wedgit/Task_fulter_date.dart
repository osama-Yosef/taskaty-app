


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskFulterDate extends StatelessWidget {
  const TaskFulterDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ItemDeat(),
        SizedBox(width: 10.w,),
        ItemDeat(),
        SizedBox(width: 10.w,),
        ItemDeat(),
        SizedBox(width: 10.w,),
        ItemDeat(),
        SizedBox(width: 10.w,),


      ],
    );
  }
}

class ItemDeat extends StatelessWidget {
  const ItemDeat({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Expanded(
        child: Container(
           padding: EdgeInsets.symmetric(horizontal:13 .h,vertical: 9.w),
          decoration: BoxDecoration(
            color:Colors.lightBlue,
            borderRadius: BorderRadius.circular(12.r)
          ),
          child: Column(
            children: [
              Text("oct",style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),),
              SizedBox(height: 5.h,),
              Text("30",style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),),
              SizedBox(height: 5.h,),
              Text("Mon",style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),),
            ],
          ),
        ),

    );
  }
}
