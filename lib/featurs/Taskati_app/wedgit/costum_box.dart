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
    this.validator,
    this.onTap,
  });

  final String title;
  final String hintText;
  final int maxLines;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          onTap: onTap,
          readOnly: onTap!=null,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r)
            ),
            hintStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
          maxLines: maxLines,
          validator: validator,
        ),
      ],
    );
  }
}
