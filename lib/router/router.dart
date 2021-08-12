import 'package:auto_route/annotations.dart';
import 'package:my_course/pages/pagination_page.dart';
import 'package:my_course/pages/home_page.dart';
import 'package:my_course/pages/post_api_page.dart';
import 'package:my_course/pages/social_share_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: PaginationPage),
    AutoRoute(page: SocialSharePage),
    AutoRoute(page: PostApiPage),
  ],
)
class $AppRouter {}
