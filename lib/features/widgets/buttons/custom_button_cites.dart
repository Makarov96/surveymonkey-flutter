import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class CustomButtonCites extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomButtonCites({Key key, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(50)),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: onPressed,
          child: Container(
            width: ScreenUtil().setWidth(850),
            height: ScreenUtil().setHeight(145),
            child: Center(
              child: Text(
                'Haz tu cita',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(65)),
              ),
            ),
          ),
        ),
        color: Colors.transparent,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              colors: [
                Color(0xFF141E30),
                Color(0xFF243B55),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
    );
  }
}
