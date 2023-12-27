import 'package:first_project/screen/main_screen.dart';
import 'package:first_project/screen/splash_screen.dart';
import 'package:first_project/screen/sub_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/main' : (context) => MainScreen(),
        // '/sub' : (context) => SubScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/sub'){
          String msg = settings.arguments as String;
          return MaterialPageRoute(builder: (context){
            return SubScreen(msg: msg,);
          },);
        }
      },
    );
  }
}


