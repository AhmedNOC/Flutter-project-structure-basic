import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nocassist/app/BandBloc.dart';
import 'EntryPage.dart';
import 'app/Band.dart';
import 'app/GoRouter.dart';
// import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final SharedPreferences prefsInstance = await SharedPreferences.getInstance();

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(
        create: (context) => RouterGo(),
      ),
      RepositoryProvider(
        create: (context) => BAND(),
      ),
    ],
    child: BlocProvider(
      create: (context) => BANDBloc(),
      child: MyApp(),
    ),
  ));
}
