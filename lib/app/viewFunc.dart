import 'package:flutter/material.dart';

Widget EL_Heading(String label) {
  return Text(
    label,
    style: TextStyle(fontSize: 37),
  );
}

void EL_Show_SnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
      .removeCurrentSnackBar(); // Clear existing snack bars
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor:
          Colors.transparent, // Set the background color to transparent
      elevation: 0, // Remove the default shadow
      content: Builder(
        builder: (BuildContext context) {
          return Container(
            margin: EdgeInsets.all(16), // Add margin for spacing
            padding: EdgeInsets.symmetric(
                vertical: 10, horizontal: 16), // Add padding
            decoration: BoxDecoration(
              color: Colors.blue, // Set the background color
              borderRadius: BorderRadius.circular(10), // Set border radius
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.white, // Set icon color
                ),
                SizedBox(width: 10), // Add spacing
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.white, // Set text color
                    fontSize: 16, // Set font size
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
