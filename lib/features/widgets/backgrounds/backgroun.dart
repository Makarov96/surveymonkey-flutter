import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgrounColor extends StatelessWidget {
  double height = 0.0;
  final Color color;
  BackgrounColor({Key key, this.height, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = ScreenUtil.screenHeight;
    double screenWidth = ScreenUtil.screenWidth;

    if (height == 0.0) {
      height = screenHeight;
    }

    return Container(
      color: color,
      width: screenWidth,
      height: height,
    );
  }
}
