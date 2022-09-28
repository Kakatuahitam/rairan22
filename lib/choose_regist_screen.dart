import 'package:flutter/material.dart';

import 'package:rairan22/peserta_regist_screen.dart';
import 'package:rairan22/bindamping_regist_screen.dart';

import 'package:rairan22/styles.dart';

class ChooseRegistScreen extends StatelessWidget {
  const ChooseRegistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 480) {
            return ChooseRegistSmall();
          } else if (constraints.maxWidth <= 1200){
            return ChooseRegistSmall(); // TourismPlaceGrid(gridCount: 4);
          } else {
            return ChooseRegistSmall(); //TourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class ChooseRegistSmall extends StatelessWidget {
  const ChooseRegistSmall({Key? key}) : super(key: key);

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
                    "Silahkan pilih menu pendaftaran",
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
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const PesertaRegistScreen();
                        }));
                      },

                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('Peserta'),
                    ),

                    SizedBox(height: 12.0),

                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const BindampingRegistScreen();
                        }));
                      },

                      style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text('Pembina Pendamping'),
                    ),
                  ],
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
