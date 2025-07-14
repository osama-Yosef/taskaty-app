import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumBox extends StatelessWidget {
  const CostumBox({
    super.key,
    required this.title,
    required this.hintText,
    this.maxLines = 1,
    this.suffixIcon,
  });

  final String title;
  final String hintText;
  final int maxLines;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 6.h),
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(),
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
          maxLines: maxLines,
        ),
      ],
    );
  }
}
