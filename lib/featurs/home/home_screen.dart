import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_app/featurs/home/wedgit/Task_fulter_date.dart';
import 'package:taskati_app/featurs/home/wedgit/botwon_add.dart';
import 'package:taskati_app/featurs/profile_screen/profile_screen.dart';

import 'wedgit/Task_costam.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Osama",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        "Have A Nice Day.",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, (MaterialPageRoute(builder: (context)=>ProfileScreen() )));
                    },
                    child: CircleAvatar(
                      radius: 30.r,
                      backgroundImage: Image.network(
                        "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/508190583_4226729064260966_5633851813526316384_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=2b5eVBXlxQAQ7kNvwH3UtPy&_nc_oc=Adn7HBkE0GMQLRLQuy9uQV5G-IlldHW6VIowHYJAmliUrPrkNzsp6ReoKB6ifWT-JR8&_nc_zt=23&_nc_ht=scontent.fcai19-4.fna&_nc_gid=b6MeqUAp9BXGT8U-AhmIEg&oh=00_AfQ6TjebLKBpwcXtue0mo7StMm6_rmoXWTxx864gBtc-mw&oe=687B43F3",
                      ).image,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mayo 31-2025",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        "Today",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  BotwonAdd(),
                ],
              ),
              SizedBox(height: 20.h),
              TaskFulterDate(),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, int index)=>SizedBox(height:10.h),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return TaskCostam();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
