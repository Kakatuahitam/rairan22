import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';


import 'package:rairan22/welcome_screen.dart';
import 'package:rairan22/profile_screen.dart';

// void main() => runApp(const MyApp());

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rairan 22',
      theme: ThemeData(
        fontFamily: '+JakartaSansText',
      ),
      // home: const WelcomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/profile': (context) => const ProfileScreen(),
      }
    );
  }
}
