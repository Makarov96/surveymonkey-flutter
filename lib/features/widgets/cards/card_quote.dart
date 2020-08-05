import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:uxapp/features/user/data/model/cite.dart';

class CardQuote extends StatelessWidget {
  final Cite cite;
  final VoidCallback handleDeleteButton;
  const CardQuote(
      {Key key, @required this.cite, @required this.handleDeleteButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25)
          .copyWith(top: ScreenUtil().setHeight(30)),
      height: ScreenUtil().setHeight(230),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(60),
          vertical: ScreenUtil().setHeight(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(right: ScreenUtil().setWidth(50)),
              width: ScreenUtil().setWidth(110),
              height: ScreenUtil().setHeight(110),
              child: Icon(
                Icons.done,
                size: ScreenUtil().setSp(80),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF9968AC), shape: BoxShape.circle),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    cite.type,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(40),
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF202C44)),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    cite.date,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(35),
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF202C44).withOpacity(0.5)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )),
            Padding(
              padding: EdgeInsets.only(right: ScreenUtil().setWidth(40)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Material(
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.white,
                      child: Container(
                        color: Colors.transparent,
                        width: ScreenUtil().setWidth(90),
                        height: ScreenUtil().setHeight(90),
                        child: Icon(
                          Icons.delete_outline,
                          size: ScreenUtil().setSp(90),
                          color: Color(0xFF202C44),
                        ),
                      )),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Material(
                child: InkWell(
                    onTap: handleDeleteButton,
                    splashColor: Colors.white,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.transparent,
                      width: ScreenUtil().setWidth(90),
                      height: ScreenUtil().setHeight(90),
                      child: Icon(
                        Icons.update,
                        size: ScreenUtil().setSp(90),
                        color: Color(0xFF202C44),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Color(0xFFE7ECF2), spreadRadius: 15, blurRadius: 35)
          ]),
    );
  }
}
