import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../app/Band.dart';

class MainEntryPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const MainEntryPage({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    // var pathlocation = GoRouterState.of(context).uri.toString();
    // context.read<BAND>().SetBuildContext(context);

    return Scaffold(
      /* appBar: AppBar(
        title: const Column(
          children: [
            Text("Shell bottom nav bar  page"),
          ],
        ),
      ),*/
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 121, 68),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(59, 10, 10, 10),
        currentIndex: navigationShell.currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(7),
              child: const Icon(
                Icons.home,
              ),
            ),
            label: 'Main',
            // backgroundColor: Color.fromARGB(255, 255, 213, 4),
          ),
          BottomNavigationBarItem(
            icon: Container(
                padding: const EdgeInsets.all(7),
                child: Icon(Icons.category_sharp)),
            label: "Catagory",
          ),
          BottomNavigationBarItem(
              icon: Container(
                  padding: const EdgeInsets.all(7),
                  child: Icon(Icons.shopping_bag)),
              label: "Cart"),
        ],
        onTap: _ontap,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 18, left: 8, right: 8, bottom: 18),
                          height: 100,
                          width: 350,
                          //   color: Color.fromARGB(255, 255, 232, 27),
                          child: Text(
                            'debug actions ',
                            style: TextStyle(fontSize: 38),
                          ),
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              context.push('/noti');
                            },
                            icon: Icon(Icons.wifi),
                            label: Text("push to noti page")),
                        Padding(padding: EdgeInsets.all(7)),
                        ElevatedButton.icon(
                            onPressed: () {
                              context.push('/test');
                            },
                            icon: Icon(Icons.text_snippet),
                            label: Text("push to test page")),
                        Padding(padding: EdgeInsets.all(7)),
                        ElevatedButton.icon(
                            onPressed: () {
                              context.read<BAND>().refreshPages();
                            },
                            icon: Icon(Icons.refresh),
                            label: Text("refresh  all active pages")),
                        Padding(padding: EdgeInsets.all(7)),
                        ElevatedButton.icon(
                            onPressed: () {
                              context.pop();
                            },
                            icon: Icon(Icons.close),
                            label: Text("close action debug")),
                      ],
                    ),
                  );
                });
          },
          label: Text('debug only')),
    );
  }

  void _ontap(int index) {
    navigationShell.goBranch(index);
  }
}
