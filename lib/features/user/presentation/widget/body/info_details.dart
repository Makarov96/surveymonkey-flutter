import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class InfoCitesDetail extends StatelessWidget {
  final String path;
  final Color color;
  InfoCitesDetail({this.path, this.color});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Hero(
      tag: path,
      child: Container(
        width: double.infinity,
        height: ScreenUtil().setHeight(900),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40)),
          image: DecorationImage(fit: BoxFit.contain, image: AssetImage(path)),
          color: Colors.white,
        ),
      ),
    );
  }
}
