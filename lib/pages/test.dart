import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app/BANDBloc.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart page"),
        ),
        body: SafeArea(
          child: Container(child:
              BlocBuilder<BANDBloc, BANDState>(builder: (context, state) {
            print('test page refreshed');
            if (state is RefreshBandState) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(builder: (context) {
                  return TextField();
                }),
              );
            } else {
              return CircularProgressIndicator();
            } // return widget here based on BlocA's state
          })),
        ));
  }
}
