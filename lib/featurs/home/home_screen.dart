import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_app/featurs/add_task/add_task.dart';
import 'package:taskati_app/featurs/home/model/task_models.dart';
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
                    onTap: () {
                      Navigator.push(
                        context,
                        (MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        )),
                      );
                    },
                    child: CircleAvatar(
                      radius: 30.r,
                      backgroundImage: NetworkImage(
                        "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-6/508190583_4226729064260966_5633851813526316384_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=MUD40mJNl8UQ7kNvwGjYeSF&_nc_oc=AdkUfuzfsptGKM020JXP3s2Qhb2cFLVNtjO5knIi53HGFn6g_yAYQ29J3oZbAkHRRBQ&_nc_zt=23&_nc_ht=scontent.fcai19-11.fna&_nc_gid=byqMupg4k2R7-dbnyT_UdQ&oh=00_AfS_Ursf11qQYVqp5z-lkcavZZ23GdGqe1p_iPomxO3uzQ&oe=68816AF3",
                      ),
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
                  BotwonAdd(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        (MaterialPageRoute(builder: (context) => AddTask())),
                      );
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TaskFulterDate(),
              SizedBox(height: 20.h),
              TaskModels.tasks.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 25.h),
                        Text(
                          "You don't have any task",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Image.asset("assets/images/task_empty.jpg"),
                      ],
                    )
                  : Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, int index) =>
                            SizedBox(height: 10.h),
                        itemCount: TaskModels.tasks.length,
                        itemBuilder: (context, index) {
                          return Dismissible(
                            key: UniqueKey(),
                            confirmDismiss: (d)async{
                                if(d==DismissDirection.startToEnd){
                                  setState(() {
                                    TaskModels.stutes == "complet";
                                  });
                                }else{
                                  setState(() {
                                    TaskModels.tasks.remove(TaskModels.tasks[index]);
                                  });

                                } ;
                            },
                            secondaryBackground: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 17.h,
                                vertical: 17.w,
                              ),
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Text(
                                "remove",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            background: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 17.h,
                                vertical: 17.w,
                              ),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Text(
                                "complet",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            child: TaskCostam(
                              taskModels: TaskModels.tasks[index],
                            ),
                          );
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
