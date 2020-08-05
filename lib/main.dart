import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:uxapp/core/const/routes/router.gr.dart';

import 'package:uxapp/features/user/presentation/pages/homepage.dart';

//import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator<Router>(
        router: Router(),
      ),
      home: HomePage(),
    );
  }
}
