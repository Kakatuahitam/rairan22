import 'package:flutter/material.dart';

import 'package:rairan22/styles.dart';

class PesertaRegistForm extends StatefulWidget {
  const PesertaRegistForm ({Key? key}) : super(key: key);

  @override
  _PesertaRegistFormState createState() => _PesertaRegistFormState();

}

class _PesertaRegistFormState extends State<PesertaRegistForm>{
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
          Text(
            "Biodata",
            style: ThemeText.heading_2,
          ),
          const Divider(color: Colors.blue, thickness: 4.0),
          const SizedBox(height: 16.0),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    // Error on Row with TextField one child(ren)
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Nama Depan',
                            isDense: true,
                          ),
                        ),

                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Nama Belakang',
                            isDense: true,
                          ),
                        ),

                        DropdownButton(
                          value: dropdownPangkalan,
                          icon: const Icon(Icons.arrow_drop_down),
                          onChanged: (String? value) {
                            setState(() {
                              dropdownPangkalan = value!;
                            });
                          },

                          items: pangkalan.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
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
