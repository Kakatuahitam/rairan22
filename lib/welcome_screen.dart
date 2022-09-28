import 'package:flutter/material.dart';

import 'package:rairan22/styles.dart';
import 'package:rairan22/forms/login_form.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 480) {
            return WelcomeScreenSmall();
          } else if (constraints.maxWidth <= 1200){
            return WelcomeScreenSmall(); // TourismPlaceGrid(gridCount: 4);
          } else {
            return WelcomeScreenSmall(); //TourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class WelcomeScreenSmall extends StatelessWidget {
  const WelcomeScreenSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 80, bottom: 24, left: 20, right: 20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "Selamat Datang",
                    style: ThemeText.title,
                  ),

                  const SizedBox(height: 12.0),

                  Text(
                    "Silahkan masuk terlebih dahulu",
                    style: ThemeText.subtitle,
                  ),
                ],
              ),
            ),

            Expanded(
              child: SizedBox(
                width: 240.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const LoginForm(),
                  ]
                ),
              ),
            ),

            Container(
              child: Text("Tim Siber Kebayoran Lama"),
            ),
          ],
        ),
      ),
    );
  }
}
