// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/home_page.dart' as _i3;
import '../pages/pagination_page.dart' as _i4;
import '../pages/post_api_page.dart' as _i6;
import '../pages/social_share_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    PaginationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.PaginationPage();
        }),
    SocialShareRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.SocialSharePage();
        }),
    PostApiRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.PostApiPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(PaginationRoute.name, path: '/pagination-page'),
        _i1.RouteConfig(SocialShareRoute.name, path: '/social-share-page'),
        _i1.RouteConfig(PostApiRoute.name, path: '/post-api-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class PaginationRoute extends _i1.PageRouteInfo {
  const PaginationRoute() : super(name, path: '/pagination-page');

  static const String name = 'PaginationRoute';
}

class SocialShareRoute extends _i1.PageRouteInfo {
  const SocialShareRoute() : super(name, path: '/social-share-page');

  static const String name = 'SocialShareRoute';
}

class PostApiRoute extends _i1.PageRouteInfo {
  const PostApiRoute() : super(name, path: '/post-api-page');

  static const String name = 'PostApiRoute';
}
