import 'package:flutter/material.dart';

class SubScreen extends StatelessWidget {
  String msg;

  SubScreen({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                leading: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('뒤로가기')),
                title: Text('서브 화면'),
                actions: [
                  Icon(Icons.ac_unit_outlined),
                ],
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: 'Tab 1',
                    ),
                    Tab(
                      text: 'Tab 2',
                    ),
                    Tab(
                      text: 'Tab 3',
                    ),
                  ],
                )),
            body: TabBarView(
              children: [
                Center(
                  child: Text('Tab 1 Content'),
                ),
                Center(
                  child: Text('Tab 2 Content'),
                ),
                Center(
                  child: Text('Tab 3 Content'),
                ),
              ],
            )));
  }
}
