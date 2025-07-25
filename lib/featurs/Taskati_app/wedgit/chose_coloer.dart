import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoseColoer extends StatefulWidget {
  final Function(Color  ) choseColor;
  ChoseColoer({super.key, required this.choseColor});

  @override
  State<ChoseColoer> createState() => _ChoseColoerState();
}

class _ChoseColoerState extends State<ChoseColoer> {
  List<Color> colors = [
    Colors.cyanAccent,
    Colors.red,
    Colors.blueAccent,
    Colors.orange,
    Colors.blueGrey,
  ];
  int indexCarnt = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Colar",
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),

        SizedBox(
          height: 50.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ColorItem(
              backgroundColor: colors[index],
              isActive: index == indexCarnt,
              onTap: () {
                if (indexCarnt != index) {
                  setState(() {
                    indexCarnt = index;
                    widget.choseColor(colors[indexCarnt]);
                  });
                }
              },
            ),
            separatorBuilder: (context, index) => SizedBox(width: 7.w),
            itemCount: colors.length,
          ),
        ),
      ],
    );
  }


}

class ColorItem extends StatelessWidget {
  ColorItem({
    super.key,
    required this.backgroundColor,
    this.isActive = false,
    this.onTap,
  });

  final Color backgroundColor;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: 18.r,
        child: isActive
            ? Icon(Icons.check, color: Colors.white, size: 25.sp)
            : null,
      ),
    );
  }
}
