import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/main');
    });
    return Scaffold(
      body: Center(
        child: Text('시작 화면입니다.'),
      ),
    );
  }
}
