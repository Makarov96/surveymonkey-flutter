import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(60)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: ScreenUtil().setSp(80),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                width: ScreenUtil().setWidth(250),
              ),
              Text(
                'Has tu cita',
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(70),
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF202C44)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
