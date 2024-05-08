import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.error),
        title: Text("Error page"),
      ),
      body: Container(
        // height: 100,
        //width: 100,
        // color: Color.fromARGB(255, 27, 183, 255),
        child: ElevatedButton(
            onPressed: () => context.go('/Main'), child: Icon(Icons.home)),
      ),
    );
  }
}
