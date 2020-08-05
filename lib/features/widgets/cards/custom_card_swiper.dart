import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:uxapp/features/Transitions/fade_route.dart';
import 'package:uxapp/features/user/data/datasource/appoitmentdata.dart';
import 'package:uxapp/features/user/presentation/pages/pagedetails.dart';

class CustomCardSwiper extends StatelessWidget {
  final AppoitmentCites appoitmentCites;
  const CustomCardSwiper({Key key, @required this.appoitmentCites})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return InkWell(
      splashColor: appoitmentCites.color,
      onTap: () {
        Navigator.push(
            context,
            FadeRoute(
                page: PageDetails(
              path: appoitmentCites.imageUrl,
              color: appoitmentCites.color,
              typeCite: appoitmentCites.title,
              description: appoitmentCites.description,
            )));
      },
      child: Container(
        height: ScreenUtil().setHeight(200),
        width: ScreenUtil().setWidth(100),
        margin: EdgeInsets.only(
            bottom: ScreenUtil().setHeight(950),
            top: ScreenUtil().setHeight(280)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil().setHeight(30),
                    left: ScreenUtil().setWidth(50)),
                child: Text(
                  '${appoitmentCites.title}',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(45),
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF202C44)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(
                    bottom: ScreenUtil().setHeight(30),
                    right: ScreenUtil().setWidth(50)),
                child: Text(
                  'Reserva con anticipacion',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(40),
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF202C44)),
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(appoitmentCites.imageUrl)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFE8ECF3).withOpacity(0.3),
                  blurRadius: 8,
                  spreadRadius: 8)
            ],
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
