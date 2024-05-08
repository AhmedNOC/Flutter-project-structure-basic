import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WebFirstPage extends StatelessWidget {
  const WebFirstPage({super.key});

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
                "EL Internal network config manager",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  //color: Colors.white
                ),
              ),
              Text(
                  'a list of config tools and internal system used to configure network devices and setup new devices in the network plus initial config and deployment of service with proper naming and description convention plus guided steps to best practices '),
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
                                  child: Text("Cisco Config"),
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
                                child: Text("Huawei Config"),
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
              Padding(padding: EdgeInsets.all(18)),
              Padding(padding: EdgeInsets.all(18)),
              Text("More"),
              Padding(padding: EdgeInsets.all(7)),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  //  padding: EdgeInsets.all(3),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Container(
                    //height: 100,
                    width: 300,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(7),
                          child: Text("Other internal tools"),
                        ),
                        Padding(padding: EdgeInsets.all(7)),
                        Container(
                          height: 90,
                          width: 230,
                          child: Image.asset(
                            'image.png',
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
      ),
    );
  }
}

class WebSecondPage extends StatefulWidget {
  const WebSecondPage({super.key});

  @override
  State<WebSecondPage> createState() => _WebSecondPageState();
}

class _WebSecondPageState extends State<WebSecondPage> {
  bool visible = false;

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
                              SelectableText(
                                "Type ip address",
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 219, 219, 219)),
                              ),
                              Padding(padding: EdgeInsets.all(7)),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  color: Color.fromARGB(255, 234, 234, 234),
                                  // height: MediaQuery.of(context).size.height *
                                  //     0.09, // for example, 15% of the screen height
                                  // width: MediaQuery.of(context).size.width *
                                  //     0.3, // 100% of the screen width

                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'example : 192.168.0.1',
                                    ),
                                    onChanged: (text) {
                                      // Handle changes to the text field
                                    },
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(18)),
                              SelectableText(
                                "Type subnet address",
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 219, 219, 219)),
                              ),
                              Padding(padding: EdgeInsets.all(7)),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  color: Color.fromARGB(255, 234, 234, 234),
                                  // height: MediaQuery.of(context).size.height *
                                  //     0.09, // for example, 15% of the screen height
                                  // width: MediaQuery.of(context).size.width *
                                  //     0.3, // 100% of the screen width

                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'example : 255.255.255.0',
                                    ),
                                    onChanged: (text) {
                                      // Handle changes to the text field
                                    },
                                  ),
                                ),
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
          ip address 192.168.0.1 255.255.255.0 
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
