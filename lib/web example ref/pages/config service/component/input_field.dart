import 'package:flutter/material.dart';

class input_field extends StatelessWidget {
  final String title;
  final String hint;
  final Function(String value) onChangeCallback;
  const input_field({
    super.key,
    required this.title,
    required this.hint,
    required this.onChangeCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          //"Type ip address",
          title,
          style: TextStyle(color: const Color.fromARGB(255, 219, 219, 219)),
        ),
        Padding(padding: EdgeInsets.all(7)),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.only(left: 7, right: 7),
            color: Color.fromARGB(255, 234, 234, 234),
            //  height: MediaQuery.of(context).size.height *
            //      0.1, // for example, 15% of the screen height
            // width: MediaQuery.of(context).size.width *
            //     0.3, // 100% of the screen width

            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                // hintText: 'example : 192.168.0.1',
                hintText: hint,
              ),
              onChanged: onChangeCallback,
            ),
          ),
        ),
        //  Padding(padding: EdgeInsets.all(18)),
      ],
    );
  }
}
