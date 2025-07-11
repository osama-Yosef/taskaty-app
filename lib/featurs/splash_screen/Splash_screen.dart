import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_app/featurs/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds:3 ),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/icons8-to-do-list.gif",
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40.h),
            Text(
              "Taskati",
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Text(
              "it is Time to Get Organized   ",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold,color:Colors.grey ),
            ),
          ],
        ),
      ),
    );
  }
}
