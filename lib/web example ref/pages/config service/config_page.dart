import 'package:flutter/material.dart';

import 'component/input_field.dart';

class WebSecondPage extends StatefulWidget {
  const WebSecondPage({super.key});

  @override
  State<WebSecondPage> createState() => _WebSecondPageState();
}

class _WebSecondPageState extends State<WebSecondPage> {
  bool visible = false;
  // here define the string that should be used or bind with user inputs
  String ipaddrss = '';
  String subnetmask = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 39, 33),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              // height: 100,
              // width: 300,
              margin: const EdgeInsets.all(38),
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SelectableText(
                    "Page 2",
                    style: TextStyle(color: Color.fromARGB(255, 219, 219, 219)),
                  ),
                  const SelectableText(
                    "Config generator",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SelectableText(
                    "this page is used to generate network device configuration for cisco , huawie and mikrotik ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 199, 199, 199)),
                  ),
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height *
                            0.7, // for example, 15% of the screen height
                        width: MediaQuery.of(context).size.width *
                            0.3, // 100% of the screen width
                        color: Colors.transparent,
                        child: Container(
                          height: MediaQuery.of(context).size.height *
                              0.5, // for example, 15% of the screen height
                          width: MediaQuery.of(context).size.width *
                              0.18, // 100% of the screen width
                          color: Colors.transparent,
                          child: ListView(
                            children: [
                              const Padding(padding: EdgeInsets.all(18)),
                              // here use the input to bind the onchange to the variable that defind above
                              input_field(
                                title: 'ip address',
                                hint: 'example : 192.168.18.18',
                                onChangeCallback: (String value) {
                                  ipaddrss = value;
                                  setState(() {});
                                },
                              ),
                              const Padding(padding: EdgeInsets.all(18)),
                              input_field(
                                title: 'subnet mask',
                                hint: 'example : 255.255.255.0',
                                onChangeCallback: (String value) {
                                  subnetmask = value;
                                  setState(() {});
                                },
                              ),
                              const Padding(padding: EdgeInsets.all(18)),
                              Container(
                                // height: 30,
                                // width: 30,
                                //    color: Colors.white,
                                color: Colors.transparent,
                                child: TextButton(
                                    onPressed: () {
                                      visible = !visible;
                                      setState(() {});
                                    },
                                    child: const Text(
                                      "Generate",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 76, 204, 151)),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(18)),
                      outputpanel(context)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container outputpanel(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *
          0.7, // for example, 15% of the screen height
      width:
          MediaQuery.of(context).size.width * 0.3, // 100% of the screen width
      color: Colors.transparent,
      child: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(18)),
          const SelectableText(
            "Config Output",
            style: TextStyle(
                fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.all(7)),
          Builder(builder: (context) {
            return Visibility(
                visible: visible,
                // here write the config with string interpoluation so that the variables that
                // were bind to the input could be displayed here
                child: SelectableText(
                  '''
        interface example 
        ip address $ipaddrss $subnetmask
        description this is text description 
        ''',
                  style: const TextStyle(
                      color: Color.fromARGB(255, 219, 219, 219)),
                ));
          })
        ],
      ),
    );
  }
}
