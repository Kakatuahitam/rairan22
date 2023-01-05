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
      minimum: const EdgeInsets.only(top: 20, bottom: 24, left: 20, right: 20),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/kucing.jpg'),
                      radius: 60.0,
                    )
                  ),
                  const Text("Yuda Kurnia Nurul Fikri", style: ThemeText.heading_2),
                  const Text("R22.D.003", style: ThemeText.standardNormal),
                  const Text("UIN Syarif Hidayatullah Jakarta", style: ThemeText.standardNormal)
                ],
              ),
            ),
            const SizedBox(height: 16.0),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset('images/qr_samplepenegak.png', height: 80.00)
                ),
                const SizedBox(width: 16.0),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Terakhir Absen", style: ThemeText.heading_2),
                      Divider(color: const Color(0xFF017DBB), thickness: 4.0),
                      Text("Lokasi"),
                      Text("Waktu"),
                      Text("Lokasi"),
                      Text("Waktu"),
                      Text("Lokasi"),
                      Text("Waktu"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Media Sosial", style: ThemeText.heading_2),
                Divider(color: const Color(0xFF017DBB), thickness: 4.0),
              ]
            ),
          ]
        ),
      ),
    );
  }
}
