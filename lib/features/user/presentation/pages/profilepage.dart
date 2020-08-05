import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:uxapp/features/user/data/repositoryimpl/platform_channel_surveymonkey_impl.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            top: true,
            child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(100)),
                  child: CircleAvatar(
                    radius: ScreenUtil().setSp(250),
                    backgroundImage: NetworkImage(
                      'https://instagram.fgua3-2.fna.fbcdn.net/v/t51.2885-15/e35/106296059_578816102817771_7605811776522404113_n.jpg?_nc_ht=instagram.fgua3-2.fna.fbcdn.net&_nc_cat=103&_nc_ohc=9w_0Ay45Bw0AX8Ke5pu&oh=09d18e51371b1d9103e73af1caf9b592&oe=5F429BB7',
                    ),
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(750)),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Hola, felicidades llegaste al final 😁',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenUtil().setSp(50)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(100)),
                  margin: EdgeInsets.only(top: ScreenUtil().setHeight(100)),
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Antes de pasar a la encuesta quiero que sepas que la app que acabas de instalar la hice en tan solo 18 horas con Flutter, ¿Increible verdad 😮?, ademas la UI con la que interactuaste dejame decirte que esta mal hecha 😪 si y lo hice a proposito con el objetivo de que la siguiente app que instales sera la que ira a produccion 😁, con una mejor UI y una experiencia de usabilidad de calidad, asi que no creas que programo tan mal 😋, ahora a realizar la encuesta ten en cuenta que la proxima que pase de aca a un mes sera con una app mas robusta y de mejor calidad 😁, gracias por tu apoyo.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenUtil().setSp(40)),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(500)),
                    child: Material(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap:
                            PlatformChannelSurveyMonkeyImpl().loadSurveyMonkey,
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/survey.png',
                                  width: 60,
                                  height: 60,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Ir a la encuesta',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(45)),
                                ),
                              ],
                            ),
                          ),
                          width: ScreenUtil().setWidth(800),
                          height: ScreenUtil().setHeight(140),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFF00BF6F),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
