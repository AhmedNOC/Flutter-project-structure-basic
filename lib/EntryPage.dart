import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/Band.dart';
import 'app/GoRouter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> setupNoti(BuildContext context) async {
    context.read<BAND>().SetBuildContext(context);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("material builder started");
    }
    setupNoti(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: context.read<RouterGo>().router,
    );
  }
}
