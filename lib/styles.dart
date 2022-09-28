import 'package:flutter/material.dart';

abstract class ThemeText {
  static const TextStyle title = TextStyle(
    fontSize: 32.0,
    fontFamily: '+JakartaSansDisplay',
    fontWeight: FontWeight.w700
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: '+JakartaSansDisplay',
    fontSize: 16.0,
    fontWeight: FontWeight.w500
  );

  static const TextStyle heading_1 = TextStyle(
    fontFamily: '+JakartaSansDisplay',
    fontSize: 20.0,
    fontWeight: FontWeight.w700
  );

  static const TextStyle subheading_1 = TextStyle(
    fontFamily: '+JakartaSansDisplay',
    fontSize: 18.0,
    fontWeight: FontWeight.w400
  );

  static const TextStyle heading_2 = TextStyle(
    fontFamily: '+JakartaSansDisplay',
    fontSize: 14.0,
    fontWeight: FontWeight.w700
  );

  static const TextStyle standardBold = TextStyle(
    fontFamily: '+JakartaSansText',
    fontSize: 12.0,
    fontWeight: FontWeight.w700
  );

  static const TextStyle standardNormal = TextStyle(
    fontFamily: '+JakartaSansText',
    fontSize: 12.0,
    fontWeight: FontWeight.w400
  );
}
