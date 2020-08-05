// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../features/user/presentation/pages/homepage.dart';
import '../../../features/user/presentation/pages/pagedetails.dart';
import '../../../features/user/presentation/pages/profilepage.dart';
import '../../../features/widgets/cards/pageview/page_view.dart';

class Routes {
  static const String customPageView = '/';
  static const String homePage = '/home-page';
  static const String pageDetails = '/page-details';
  static const String profilePage = '/profile-page';
  static const all = <String>{
    customPageView,
    homePage,
    pageDetails,
    profilePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.customPageView, page: CustomPageView),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.pageDetails, page: PageDetails),
    RouteDef(Routes.profilePage, page: ProfilePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    CustomPageView: (data) {
      var args = data.getArgs<CustomPageViewArguments>(
        orElse: () => CustomPageViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CustomPageView(key: args.key),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    PageDetails: (data) {
      var args = data.getArgs<PageDetailsArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PageDetails(
          path: args.path,
          color: args.color,
          typeCite: args.typeCite,
          description: args.description,
        ),
        settings: data,
      );
    },
    ProfilePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProfilePage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CustomPageView arguments holder class
class CustomPageViewArguments {
  final Key key;
  CustomPageViewArguments({this.key});
}

/// PageDetails arguments holder class
class PageDetailsArguments {
  final String path;
  final Color color;
  final String typeCite;
  final String description;
  PageDetailsArguments(
      {this.path,
      this.color,
      @required this.typeCite,
      @required this.description});
}
