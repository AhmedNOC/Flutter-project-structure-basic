import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nocassist/app/Band.dart';

import '../View/ViewModel.dart';

class NotiPage extends StatefulWidget {
  const NotiPage({super.key});

  @override
  State<NotiPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    var catagory = context.read<BAND>().catagoryList;
    return Scaffold(
        appBar: AppBar(
          title: Text("Catagory page"),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *
                  0.76, // for example, 15% of the screen height
              width: MediaQuery.of(context).size.width *
                  1, // 100% of the screen width

              //color: Colors.amber,
              child: ListView.builder(
                  itemCount: catagory.length,
                  itemBuilder: (context, index) {
                    return Container(
                        padding: EdgeInsets.all(12),
                        child: CatagoryModelView(catagory: catagory[index]));
                  }),
            ),
          ],
        )));
  }
}
