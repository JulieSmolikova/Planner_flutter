import 'package:flutter/material.dart';

const kLavender = Color(0xffaba9e0);
const kYellow = Color(0xffded79f);
const kPink = Color(0xffdcb1b9);
const kVin = Color(0xff5c384f);
const kGreen = Color(0xffa2dfcf);
const kBrown = Color(0xff23262e);
const kBlue = Color(0xffa3c5ea);
const kBrown2 = Color(0xff241105);

final kBoxShadow = [
  BoxShadow(
    color: kBrown.withOpacity(0.4),
    offset: const Offset(-5, -5),
    blurRadius: 15
  ),
  BoxShadow(
    color: kBrown.withOpacity(0.9),
    offset: const Offset(5, 5),
    blurRadius: 15
  )
];

final kBoxShadowYellow = [
  BoxShadow(
      color: kYellow.withOpacity(0.6),
      offset: const Offset(-2, -2),
      blurRadius: 10
  ),
  BoxShadow(
      color: kYellow.withOpacity(0.6),
      offset: const Offset(2, 2),
      blurRadius: 10
  )
];

const kTextStyle18 = TextStyle(
  color: kBrown,
  fontFamily: 'Mulish Bold',
  fontSize: 18
);

const kTextStyle15 = TextStyle(
    color: kBrown,
    fontFamily: 'Mulish Bold',
    fontSize: 15
);