import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uxapp/features/user/data/model/cite.dart';
import 'package:uxapp/features/user/presentation/widget/body/info_details.dart';
import 'package:uxapp/features/user/presentation/widget/header/custom_header.dart';
import 'package:uxapp/features/widgets/backgrounds/backgroun.dart';
import 'package:uxapp/features/widgets/buttons/custom_button_cites.dart';

class PageDetails extends StatelessWidget {
  final String path;
  final Color color;
  final String typeCite;
  final String description;

  PageDetails(
      {this.path,
      this.color,
      @required this.typeCite,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgrounColor(
          color: color,
        ),
        BodyCitesDetail(
          typeCite: typeCite,
          description: description,
          color: color,
        ),
        InfoCitesDetail(
          path: path,
          color: color,
        ),
        CustomHeader(),
      ],
    ));
  }
}

class BodyCitesDetail extends StatefulWidget {
  final String typeCite;
  final String description;
  final Color color;

  BodyCitesDetail(
      {Key key,
      @required this.typeCite,
      @required this.description,
      @required this.color})
      : super(key: key);

  @override
  _BodyCitesDetailState createState() => _BodyCitesDetailState();
}

class _BodyCitesDetailState extends State<BodyCitesDetail> {
  DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
    list = [];
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Stack(
      children: [
        ListView(children: [
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(870)),
            width: ScreenUtil.screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.typeCite,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(70),
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(100))
                    .copyWith(top: 10),
            padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(50)),
            height: ScreenUtil().setHeight(200),
            child: Center(
              child: Text(
                widget.description,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(40),
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(100))
                .copyWith(top: ScreenUtil().setHeight(20)),
            width: ScreenUtil.screenWidth,
            child: Text(
              'Selecciona una fecha para reservar',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(50),
                  fontWeight: FontWeight.w600),
            ),
            decoration: BoxDecoration(),
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setWidth(30)),
            child: DatePicker(
              DateTime.now().add(Duration(days: 0)),
              width: ScreenUtil().setWidth(150),
              height: ScreenUtil().setHeight(230),
              controller: _controller,
              dayTextStyle: TextStyle(fontSize: ScreenUtil().setSp(20)),
              dateTextStyle: TextStyle(fontSize: ScreenUtil().setSp(50)),
              monthTextStyle: TextStyle(fontSize: ScreenUtil().setSp(20)),
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.black,
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                // New date selected
                setState(() {
                  _selectedValue = date;
                  print(_selectedValue);
                });
              },
              locale: 'es_MX',
            ),
          ),
        ]),
        Align(
            alignment: Alignment.bottomCenter,
            child: CustomButtonCites(onPressed: () {
              setState(() {
                list.add(Cite(_selectedValue.toString(), widget.description));
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(
                    "Tu cita se hizo correctamente 😁",
                    textAlign: TextAlign.center,
                  ),
                ));
              });
            })),
      ],
    );
  }
}
