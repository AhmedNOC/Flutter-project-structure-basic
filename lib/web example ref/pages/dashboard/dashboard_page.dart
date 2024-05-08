import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'component/dashboard_button_service.dart';

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
                    dashboard_service_container(
                      title: 'Cisco config',
                      imagePath: 'web/image2.png',
                      onClick: () {
                        context.go('/SecondMain');
                      },
                    ),
                    Padding(padding: EdgeInsets.all(16)),
                    dashboard_service_container(
                      title: 'Huawei config',
                      imagePath: 'web/image1.png',
                      onClick: () {
                        context.go('/SecondMain');
                      },
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(18)),
              Padding(padding: EdgeInsets.all(18)),
              Text("More"),
              Padding(padding: EdgeInsets.all(7)),
              dashboard_service_container(
                title: 'other tools',
                imagePath: 'web/image2.png',
                onClick: () {
                  context.go("/thirdMain");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
