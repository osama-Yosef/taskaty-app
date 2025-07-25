import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();

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
                    _showUploadOptions(context, picker);
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://scontent.fcai19-11.fna.fbcdn.net/v/t39.30808-6/508190583_4226729064260966_5633851813526316384_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=MUD40mJNl8UQ7kNvwGjYeSF&_nc_oc=AdkUfuzfsptGKM020JXP3s2Qhb2cFLVNtjO5knIi53HGFn6g_yAYQ29J3oZbAkHRRBQ&_nc_zt=23&_nc_ht=scontent.fcai19-11.fna&_nc_gid=byqMupg4k2R7-dbnyT_UdQ&oh=00_AfS_Ursf11qQYVqp5z-lkcavZZ23GdGqe1p_iPomxO3uzQ&oe=68816AF3",
                    ),
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
                        _showUploadOptions(context, picker);
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

  void _showUploadOptions(BuildContext context, ImagePicker picker) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 7.w),
          height: 200.h,
          child: Column(
            children: [
              InkWell(
                onTap: () async {
                  XFile? image = await picker.pickImage(source: ImageSource.camera);
                  if (image != null) {
                    print(" upload from Camera ${image.path}");
                  }
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 70.sp),
                  decoration: BoxDecoration(
                    color: Color(0xFF5B5BF6),
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                  child: Center(
                    child: Text(
                      "Upload from Camera",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              InkWell(
                onTap: () async {
                  XFile? image = await picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    print("upload from Gallery ${image.path}");
                  }
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 70.sp),
                  decoration: BoxDecoration(
                    color: Color(0xFF5B5BF6),
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                  child: Center(
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
              ),
            ],
          ),
        );
      },
    );
  }
}
