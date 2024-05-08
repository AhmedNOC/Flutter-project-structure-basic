import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WebThirdPage extends StatefulWidget {
  const WebThirdPage({super.key});

  @override
  State<WebThirdPage> createState() => _WebThirdPageState();
}

class _WebThirdPageState extends State<WebThirdPage> {
  // these are used for dropdown menu
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          // height: 100,
          // width: 100,
          margin: EdgeInsets.all(38),
          //  color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Heading ",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  //color: Colors.white
                ),
              ),
              Text("Description text or body text"),
              Padding(padding: EdgeInsets.all(7)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        context.go('/SecondMain');
                      },
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
                                  child: Text("can be pressed card"),
                                ),
                                Padding(padding: EdgeInsets.all(7)),
                                Container(
                                  margin: EdgeInsets.all(7),
                                  height: 70,
                                  width: 180,
                                  child: Image.asset(
                                    'web/image2.png',
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
                    ),
                    Padding(padding: EdgeInsets.all(16)),
                    ClipRRect(
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
                                child: Text("just for view card"),
                              ),
                              Padding(padding: EdgeInsets.all(7)),
                              Container(
                                height: 90,
                                width: 230,
                                child: Image.asset(
                                  'web/image1.png',
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
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(7)),
              SelectableText(
                "this is a text widget that can be selected",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
              Padding(padding: EdgeInsets.all(7)),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Color.fromARGB(255, 234, 234, 234),
                  // height: MediaQuery.of(context).size.height *
                  //     0.09, // for example, 15% of the screen height
                  width: MediaQuery.of(context).size.width *
                      0.3, // 100% of the screen width

                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Simple text field',
                    ),
                    onChanged: (text) {
                      // Handle changes to the text field
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(7)),
              ElevatedButton(
                onPressed: () {},
                child: Text("simple button"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 72, 72, 72),
                  backgroundColor:
                      Color.fromARGB(255, 151, 217, 255), // Text color
                ),
              ),
              Padding(padding: EdgeInsets.all(7)),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Color.fromARGB(255, 234, 234, 234),
                  child: DropdownButton<String>(
                      underline: SizedBox(),
                      icon: Container(
                          padding: EdgeInsets.all(7),
                          child: Icon(Icons.arrow_drop_down)),

                      // Set the value to the selected value
                      value: selectedValue,
                      // Set the items to the list of options
                      items: options.map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      // Set the onChanged callback to update the state when the user selects an option
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      }),
                ),
              ),
              Padding(padding: EdgeInsets.all(7)),
            ],
          ),
        ),
      ),
    );
  }
}
