import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:uxapp/features/Transitions/fade_route.dart';
import 'package:uxapp/features/user/data/model/cite.dart';
import 'package:uxapp/features/user/presentation/pages/profilepage.dart';

import 'package:uxapp/features/widgets/cards/card_quote.dart';

class CardList extends StatefulWidget {
  CardList({Key key}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  void initState() {
    super.initState();
    list = [];
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    Timer.periodic(
        Duration(seconds: 3),
        (timer) => setState(() {
              list = list;
            }));
    return Container(
      height: ScreenUtil().setHeight(850),
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setHeight(70),
                vertical: ScreenUtil().setWidth(70)),
            child: Text(
              'Tus citas',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(70),
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF202C44)),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: ScreenUtil().setHeight(170)),
              child: (list.length == 0)
                  ? Center(
                      child: Text(
                        'Aun no tienes citas 😪 puedes hacer una tocando una tarjetita de arriba',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(50)),
                      ),
                    )
                  : ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (_, int index) {
                        final cite = list[index];
                        return CardQuote(
                          cite: Cite(cite.date, cite.type),
                          handleDeleteButton: () {
                            setState(() {
                              list.removeAt(index);
                            });
                          },
                        );
                      })),
          (list.length >= 1)
              ? Positioned(
                  top: ScreenUtil().setHeight(50),
                  right: ScreenUtil().setWidth(20),
                  child: Row(
                    children: [
                      Text('😮👉'),
                      FloatingActionButton(
                          elevation: 0.0,
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context, FadeRoute(page: ProfilePage()));
                          }),
                    ],
                  ))
              : Container()
        ],
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFDFDFD),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
              color: Color(0xFFE8ECF3).withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 5)
        ],
      ),
    );
  }
}
