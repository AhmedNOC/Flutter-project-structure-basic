import 'package:flutter/material.dart';

import 'component/input_field.dart';

class WebSecondPage extends StatefulWidget {
  const WebSecondPage({super.key});

  @override
  State<WebSecondPage> createState() => _WebSecondPageState();
}

class _WebSecondPageState extends State<WebSecondPage> {
  bool visible = false;
  String ipaddrss = '';
  String subnetmask = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 39, 33),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              // height: 100,
              // width: 300,
              margin: EdgeInsets.all(38),
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    "Page 2",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 219, 219, 219)),
                  ),
                  SelectableText(
                    "Config generator",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SelectableText(
                    "this page is used to generate network device configuration for cisco , huawie and mikrotik ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: const Color.fromARGB(255, 199, 199, 199)),
                  ),
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height *
                            0.7, // for example, 15% of the screen height
                        width: MediaQuery.of(context).size.width *
                            0.3, // 100% of the screen width

                        child: Container(
                          height: MediaQuery.of(context).size.height *
                              0.5, // for example, 15% of the screen height
                          width: MediaQuery.of(context).size.width *
                              0.18, // 100% of the screen width

                          child: ListView(
                            children: [
                              Padding(padding: EdgeInsets.all(18)),
                              input_field(
                                title: 'ip address',
                                hint: 'example : 192.168.18.18',
                                onChangeCallback: (String value) {
                                  print(value);
                                  ipaddrss = value;
                                  setState(() {});
                                },
                              ),
                              Padding(padding: EdgeInsets.all(18)),
                              input_field(
                                title: 'subnet mask',
                                hint: 'example : 255.255.255.0',
                                onChangeCallback: (String value) {
                                  print(value);
                                  subnetmask = value;
                                  setState(() {});
                                },
                              ),
                              Padding(padding: EdgeInsets.all(18)),
                              Container(
                                // height: 30,
                                // width: 30,
                                //    color: Colors.white,
                                child: TextButton(
                                    onPressed: () {
                                      visible = !visible;
                                      setState(() {});
                                    },
                                    child: Text(
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
                      Padding(padding: EdgeInsets.all(18)),
                      Container(
                        height: MediaQuery.of(context).size.height *
                            0.7, // for example, 15% of the screen height
                        width: MediaQuery.of(context).size.width *
                            0.3, // 100% of the screen width

                        child: ListView(
                          children: [
                            Padding(padding: EdgeInsets.all(18)),
                            SelectableText(
                              "Config Output",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Padding(padding: EdgeInsets.all(7)),
                            Builder(builder: (context) {
                              return Visibility(
                                  visible: visible,
                                  child: SelectableText(
                                    '''
          interface example 
          ip address $ipaddrss $subnetmask
          description this is text description 
          ''',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 219, 219, 219)),
                                  ));
                            })
                          ],
                        ),
                      )
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
}
