import 'package:flutter/material.dart';

class dashboard_service_container extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function() onClick;

  const dashboard_service_container({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   context.go('/SecondMain');
      // },
      onTap: onClick,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          //  padding: EdgeInsets.all(3),
          color: Color.fromARGB(255, 255, 255, 255),
          child: Container(
            height: 180,
            width: 300,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(7),
                  // child: Text("Cisco Config"),
                  child: Text(title),
                ),
                Padding(padding: EdgeInsets.all(7)),
                Container(
                  margin: EdgeInsets.all(7),
                  height: 70,
                  width: 180,
                  child: Image.asset(
                    //  'web/image2.png',
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(158, 40, 40, 40),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ),
    );
  }
}
