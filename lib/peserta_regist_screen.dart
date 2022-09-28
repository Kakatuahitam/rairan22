import 'package:flutter/material.dart';

import 'package:rairan22/styles.dart';
import 'package:rairan22/forms/peserta_regist_form.dart';

class PesertaRegistScreen extends StatelessWidget {
  const PesertaRegistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Formulir Pendaftaran",
                  style: ThemeText.heading_1,
                ),

                Text(
                  "Peserta",
                  style: ThemeText.subheading_1,
                ),
              ],
            ),

            const SizedBox(height: 20.0),

            const PesertaRegistForm(),
          ],
        ),
      ),
    );
  }
}
