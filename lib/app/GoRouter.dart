// go route router that points to othre pages for each route that is passed to material page

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/Entery app page view.dart';
import '../pages/mainPage.dart';
import '../pages/noti.dart';
import '../pages/test.dart';
import 'Error Page.dart';

final rootNav = GlobalKey<NavigatorState>();
final shellNav = GlobalKey<NavigatorState>();

class RouterGo {
  RouterGo();
  final GoRouter router = GoRouter(
      navigatorKey: rootNav,
      initialLocation: '/FirstMain',
      errorBuilder: (context, state) => const ErrorPage(),
      // redirect: (context, state) {
      //   // todo : check if the user is first time opening the app through a value from
      //   // from shared preference if so then show them onboarding page which could be a login page or feature show case
      // },
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return MainEntryPage(
                navigationShell: navigationShell,
              );
            },
            branches: [
              StatefulShellBranch(navigatorKey: shellNav, routes: [
                GoRoute(
                  path: '/FirstMain',
                  builder: (context, state) => const MainPage(),
                  //  builder:(context, state) =>  const TestRoutesFirstpage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: '/SecondMain',
                  builder: (context, state) => const NotiPage(),
                )
              ]),
              StatefulShellBranch(routes: [
                GoRoute(
                  path: '/ThirdMain',
                  builder: (context, state) => const TestPage(),
                )
              ]),
            ]),
        GoRoute(
          path: '/Main',
          builder: (context, state) => const MainPage(),
        ),
        GoRoute(
          path: '/noti',
          builder: (context, state) => const NotiPage(),
        ),
        GoRoute(
          path: '/test',
          builder: (context, state) => const TestPage(),
        ),
      ]);
}
