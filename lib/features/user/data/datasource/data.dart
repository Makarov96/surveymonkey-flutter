import 'dart:ui';

//
var pageList = [
  PageModel(
      imageUrl: "assets/illustration.png",
      title: "TEST APP",
      body: "ANALIZA CADA PARTE DE LA APP",
      titleGradient: [Color(0xFF9708CC), Color(0xFF43CBFF)]),
  PageModel(
      imageUrl: "assets/illustration2.png",
      title: "UX",
      body: "UX ES LA EXPERIENCIA\nQUE TIENE UN USUARIO\nUSANDO UNA APLICACION",
      titleGradient: [Color(0xFFE2859F), Color(0xFFFCCF31)]),
  PageModel(
      imageUrl: "assets/illustration3.png",
      title: "VAMOS",
      body: "ESTA ES LA PRIMERA APP\nDE 2 QUE TENDRAS \nQUE TESTEAR",
      titleGradient: [Color(0xFF5EFCE8), Color(0xFF736EFE)]),
];

class PageModel {
  String imageUrl;
  String title;
  String body;
  List<Color> titleGradient = [];
  PageModel({this.imageUrl, this.title, this.body, this.titleGradient});
}
