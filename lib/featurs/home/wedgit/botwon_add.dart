import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BotwonAdd extends StatelessWidget {
  const BotwonAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8.sp),
        decoration: BoxDecoration(

          color: Colors.lightBlue ,
          borderRadius:BorderRadius.circular(15.r),



        ),

        child: Row(
          children: [
            Icon(Icons.add,color: Colors.white,size: 18.sp,),
            SizedBox(width: 5.w,),
            Text("Add Task",style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
