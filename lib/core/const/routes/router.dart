import 'package:auto_route/auto_route_annotations.dart';
import 'package:uxapp/features/user/presentation/pages/homepage.dart';
import 'package:uxapp/features/user/presentation/pages/pagedetails.dart';
import 'package:uxapp/features/user/presentation/pages/profilepage.dart';
import 'package:uxapp/features/widgets/cards/pageview/page_view.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: CustomPageView, initial: true),
  MaterialRoute(page: HomePage, initial: false),
  MaterialRoute(page: PageDetails, initial: false),
  MaterialRoute(page: ProfilePage, initial: false),
])
class $Router {}
