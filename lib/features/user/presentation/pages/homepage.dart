import 'package:flutter/material.dart';
import 'package:uxapp/features/user/presentation/widget/body/home_page_body.dart';

import '../../../widgets/backgrounds/backgroun.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        BackgrounColor(
          height: 0.0,
          color: Color(0xFFFFD089),
        ),
        HomePageBody()
      ],
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
