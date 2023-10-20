import 'package:flutter/material.dart';

const KLavander = Color(0xffaba9e0);
const KYellow = Color(0xffded79f);
const KPink = Color(0xffdcb1b9);
const KVin = Color(0xff5c384f);
const KGreen = Color(0xffa2dfcf);
const KBrown = Color(0xff23262e);
const KBlue = Color(0xffa3c5ea);
const KBrown2 = Color(0xff241105);

final KboxShadow = [
  BoxShadow(
    color: KBrown.withOpacity(0.4),
    offset: const Offset(-5, -5),
    blurRadius: 15
  ),
  BoxShadow(
    color: KBrown.withOpacity(0.9),
    offset: const Offset(5, 5),
    blurRadius: 15
  )
];

final KboxShadowYellow = [
  BoxShadow(
      color: KYellow.withOpacity(0.6),
      offset: const Offset(-2, -2),
      blurRadius: 10
  ),
  BoxShadow(
      color: KYellow.withOpacity(0.6),
      offset: const Offset(2, 2),
      blurRadius: 10
  )
];

const KTextStyle18 = TextStyle(
  color: KBrown,
  fontFamily: 'Mulish Bold',
  fontSize: 18
);

const KTextStyle15 = TextStyle(
    color: KBrown,
    fontFamily: 'Mulish Bold',
    fontSize: 15
);