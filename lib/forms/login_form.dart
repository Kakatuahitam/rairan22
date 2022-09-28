import 'package:flutter/material.dart';
import 'package:rairan22/styles.dart';

import 'package:rairan22/profile_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm ({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();

}

class _LoginFormState extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();

  static const List<String> pangkalan = <String>[
    "Pangkalan",
    "UIN Syarif Hidayatullah Jakarta",
    "SMKN 59 Jakarta",
    "SMK Jakarta Wisata"
  ];

  String dropdownPangkalan = pangkalan.first;

  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            isDense: true,
                          ),
                        ),

                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            isDense: true,
                          ),
                          obscureText: true
                        ),

                        SizedBox(height: 20.0),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                // Navigate to the second screen using a named route.
                                Navigator.pushNamed(context, '/profile');
                              },

                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                              ),
                              child: const Text('Masuk'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return Text("Akan dibuat halaman buat akun");
                                }));
                              },

                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                              ),
                              child: const Text('Buat Akun'),
                            ),
                          ],
                        ),
                      ]
                    )
                  ),
                ],
              ),
            ],
          )
        ],
      )
    );
  }
}
