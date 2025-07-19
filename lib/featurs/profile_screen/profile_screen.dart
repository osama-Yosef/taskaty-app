import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  get picker => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 7.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (builder) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 7.w ),
                          alignment: Alignment.center,
                          width: 350.w,
                          height: 200.h,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Key picker = ImagePicker() as Key;
                                },
                                child: Container(
                                  padding: EdgeInsets.only(top: 25.sp,bottom: 25.sp,left: 70.sp,right: 70.sp),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(17.r),

                                  ),
                                  child: Text(
                                    "Upload from camera",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              InkWell(
                                onTap: ()  async {

                                  XFile? _ = await picker.pickImage(source: ImageSource.gallery);
                                  
                                },
                                child: Container(
                                  padding: EdgeInsets.only(top: 25.sp,bottom: 25.sp,left: 70.sp,right: 70.sp),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(17.r),
                                  ),
                                  child: Text(
                                    "Upload from Gallery",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    backgroundImage: Image.network(
                      "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/508190583_4226729064260966_5633851813526316384_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=2b5eVBXlxQAQ7kNvwH3UtPy&_nc_oc=Adn7HBkE0GMQLRLQuy9uQV5G-IlldHW6VIowHYJAmliUrPrkNzsp6ReoKB6ifWT-JR8&_nc_zt=23&_nc_ht=scontent.fcai19-4.fna&_nc_gid=b6MeqUAp9BXGT8U-AhmIEg&oh=00_AfQ6TjebLKBpwcXtue0mo7StMm6_rmoXWTxx864gBtc-mw&oe=687B43F3",
                    ).image,
                    radius: 60.r,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(blurRadius: 4, color: Colors.black26),
                      ],
                    ),
                    padding: EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet;
                      },
                      child: Icon(
                        Icons.add_a_photo,
                        size: 24,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Divider(color: Colors.black, endIndent: 20.sp, indent: 20.sp),
            SizedBox(height: 15.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Osama Yosef Ali",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.blue,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 20.r,
                  child: Icon(Icons.edit, size: 20.sp, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
