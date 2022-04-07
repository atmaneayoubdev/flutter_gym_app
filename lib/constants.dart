import 'package:flutter/material.dart';

const Color kredColor = Color.fromRGBO(241, 0, 0, 1);
const Color kYellowColor = Color.fromRGBO(255, 205, 0, 1);
const Color klightRedColor = Color.fromRGBO(241, 0, 0, 0.09);
const Color kBackGroundColor = Color.fromRGBO(248, 248, 248, 1);
const Color kblackColor = Color.fromRGBO(45, 47, 58, 1);
const Color klightGreyColor = Color.fromRGBO(248, 248, 248, 1);
const Color klightGreyColo2r = Color.fromRGBO(213, 213, 213, 1);
const Color kBorderColor = Color.fromRGBO(241, 0, 0, 0.38);
const Color kgreyColor = Color.fromRGBO(195, 195, 195, 1);
const Gradient kgradiantColot = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color.fromARGB(255, 234, 97, 5),
    kYellowColor,
  ],
);
const Gradient kgradiantColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromARGB(255, 241, 100, 0),
    kYellowColor,
  ],
);
const Gradient kblackgradiant = RadialGradient(
  radius: 3,
  colors: <Color>[
    Color.fromRGBO(0, 0, 0, 0), // yellow sun
    Color.fromRGBO(0, 0, 0, 1), // blue sky
  ],
  //stops: <double>[0.4, 1.0],
);
const Gradient kcoloregradiant = RadialGradient(
  radius: 2,

  colors: <Color>[
    Color.fromRGBO(241, 0, 0, 0.25), // yellow sun
    Color.fromRGBO(255, 205, 0, 0.25), // blue sky
  ],
  //stops: <double>[0.4, 1.0],
);
const Gradient ksliderGradiant = RadialGradient(
  radius: 1,
  colors: <Color>[
    Color.fromARGB(255, 0, 0, 0), // yellow sun
    Color.fromRGBO(0, 0, 0, 0), // blue sky
  ],
  //stops: <double>[0.4, 1.0],
);
const Gradient ksliderGradiant2 = RadialGradient(
  radius: 1,
  colors: <Color>[
    Color.fromARGB(255, 0, 0, 0), // yellow sun
    Color.fromRGBO(0, 0, 0, 0), // blue sky
  ],
  //stops: <double>[0.4, 1.0],
);
