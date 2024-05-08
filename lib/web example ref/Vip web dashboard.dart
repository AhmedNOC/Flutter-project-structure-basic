/*
a simple UI page for the VIP team 
- Noc engineer view that can do any button on screen 
- back office engineer view that has limited active button on screen 
- easy to view tunnels and customer connection and local connections 
- config generator page 
- initial config generator page 
- capacity change inside the tunnel connection easily 
- remove or change values easily 
- check power automaticly 
and so on 
*/

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainEntryPageWeb extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  MainEntryPageWeb({super.key, required this.navigationShell});

  @override
  State<MainEntryPageWeb> createState() => _MainEntryPageWebState();
}

class _MainEntryPageWebState extends State<MainEntryPageWeb> {
  List<Widget> sidebar = [
    Text("Dashboard"),
    Text("Config generator"),
    Text("Component design Library"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 113, 112),
      /* appBar: AppBar(
        title: const Column(
          children: [
            Text("Shell bottom nav bar  page"),
          ],
        ),
      ),*/
      drawer: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            widget.navigationShell.goBranch(1);
            Scaffold.of(context).closeDrawer();
          },
          child: Container(
              padding: EdgeInsets.all(18),
              color: Colors.amber,
              height: 100,
              width: 100,
              child: Text("drawer ")),
        );
      }),
      body: Row(
        children: [
          SingleChildScrollView(
            child: Container(
              height: 600,
              width: 300,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        height: 100,
                        width: 170,
                        child: Icon(
                          Icons.view_compact,
                          size: 38,
                          color: const Color.fromARGB(255, 243, 243, 243),
                        ),
                      ),
                    );
                  }),
                  Container(
                      margin: EdgeInsets.only(bottom: 18),
                      child: Text(
                        'VIP Dashboard',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 243, 243, 243),
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 300,
                    width: 300,
                    padding: EdgeInsets.all(16),
                    child: ListView.builder(
                      itemCount: sidebar.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // navigationShell.goBranch(index);
                          },
                          child: Container(
                            // color: (navigationShell.currentIndex == index)
                            //     ? Colors.amber
                            //     : null,
                            padding: EdgeInsets.all(7),
                            height: 70,
                            width: 70,
                            child: ElevatedButton(
                              onPressed: () {
                                widget.navigationShell.goBranch(index);
                              },
                              child: sidebar[index],
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(255, 72, 72, 72),
                                backgroundColor:
                                    (widget.navigationShell.currentIndex ==
                                            index)
                                        ? Color.fromARGB(255, 154, 239, 162)
                                        : Color.fromARGB(255, 228, 228, 228),
                                textStyle: TextStyle(
                                  color: (widget.navigationShell.currentIndex ==
                                          index)
                                      ? const Color.fromARGB(255, 255, 255, 255)
                                      : Colors.black12,
                                ), // Text color
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.all(18),
                        child: Text(
                          'VIP',
                          style: TextStyle(
                              fontSize: 38,
                              color: Color.fromARGB(151, 225, 225, 225)),
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
          Expanded(child: widget.navigationShell),
        ],
      ),
    );
  }
}
