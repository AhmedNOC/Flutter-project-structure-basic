import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nocassist/app/viewFunc.dart';

import '../Domain/Models.dart';
import '../app/Band.dart';

class CatagoryModelView extends StatelessWidget {
  final Catagory catagory;
  const CatagoryModelView({super.key, required this.catagory});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context)
              .removeCurrentSnackBar(); // Clear existing snack bars
          print(catagory.name);

          EL_Show_SnackBar(context, "you pressed : " + catagory.name);
        },
        child: Row(
          children: [
            const Icon(Icons.category_sharp),
            const Padding(padding: EdgeInsets.all(7)),
            EL_Heading(catagory.name)
          ],
        ),
      ),
    );
  }
}
