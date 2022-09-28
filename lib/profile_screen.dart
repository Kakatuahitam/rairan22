import 'package:flutter/material.dart';

import 'package:rairan22/styles.dart';
import 'package:rairan22/forms/login_form.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 480) {
            return ProfileScreenSmall();
          } else if (constraints.maxWidth <= 1200){
            return ProfileScreenSmall(); // TourismPlaceGrid(gridCount: 4);
          } else {
            return ProfileScreenSmall(); //TourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class ProfileScreenSmall extends StatelessWidget {
  const ProfileScreenSmall({Key? key}) : super(key: key);

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
                    "Halo Kakak",
                    style: ThemeText.title,
                  ),

                  const SizedBox(height: 12.0),

                  Text(
                    "Anda telah berhasil masuk",
                    style: ThemeText.subtitle,
                  ),
                ],
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
