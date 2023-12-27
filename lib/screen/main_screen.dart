import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인화면'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              // 서브 화면으로 이동 (생성하면서 이동)
              Navigator.pushNamed(context, '/sub', arguments: 'hello');
              // Navigator.pushReplacementNamed(context, '/sub');
            },
            child: Text('클릭하여 서브 화면으로 이동'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('헤더 영역'),
            ),
            ListTile(title: Text('홈 화면'), onTap: () {

            },),
            ListTile(title: Text('메인 화면'), onTap: () {

            },),
            ListTile(title: Text('서브 화면'), onTap: () {

            },),
          ],
        ),
      ),
    );
  }
}
