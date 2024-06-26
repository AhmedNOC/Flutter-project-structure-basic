import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'compoent library.dart';
import 'Vip web dashboard.dart';
// import 'Web page.dart';
import 'pages/config service/config_page.dart';
import 'pages/dashboard/dashboard_page.dart';

/* 
here is the material page that handle 
- go route router is passed 
- themes data is passed 
*/

class Material_Entry_Web extends StatefulWidget {
  const Material_Entry_Web({super.key});

  @override
  State<Material_Entry_Web> createState() => _MaterialStarterConfig();
}

class _MaterialStarterConfig extends State<Material_Entry_Web> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // this line local is used below to specify
      // in a hardcoded way that language and direction
      // is in the english
      locale: const Locale('en', 'EN'),
      // todo: added language support such as arabic
      debugShowCheckedModeBanner: true,
      title: 'Flutter Example Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: RouterGoWeb().router,
    );
  }
}

final rootNav = GlobalKey<NavigatorState>();
final shellNav = GlobalKey<NavigatorState>();

class RouterGoWeb {
  RouterGoWeb();

  final GoRouter router =
      GoRouter(navigatorKey: rootNav, initialLocation: '/FirstMain', routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainEntryPageWeb(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(navigatorKey: shellNav, routes: [
            GoRoute(
              path: '/FirstMain',
              builder: (context, state) => const WebFirstPage(),
              //  builder:(context, state) =>  const TestRoutesFirstpage(),
            )
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/SecondMain',
              builder: (context, state) => const WebSecondPage(),
            )
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/ThirdMain',
              builder: (context, state) => const WebThirdPage(),
            )
          ]),
        ])
  ]);
}
