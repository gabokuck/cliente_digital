import 'package:flutter/material.dart';

ThemeData temaLocal(){
  return ThemeData(
    primaryColor: Color.fromRGBO(5, 65, 64, 1.0),
    backgroundColor: Color.fromRGBO(8, 83, 148, 0.8),
    disabledColor: Color.fromRGBO(2, 84, 54, 1.0),
    scaffoldBackgroundColor: Colors.white,
    accentTextTheme: TextTheme(
      bodyText1: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30)
    ),
    // scrollbarTheme: ScrollbarThemeData(
    //   // Radius del scrollbar
    //   radius: Radius.circular(0),
    //   // Ancho del scrollbar
    //   thickness: MaterialStateProperty.all<double>(20),
    //   // Color del fondo del scroll
    //   trackColor: MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.3)),
    //   // Colors del scroll
    //   trackBorderColor: MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.1)),
    //
    //   thumbColor: MaterialStateProperty.all<Color>(Colors.grey),
    //   isAlwaysShown: false,
    //   crossAxisMargin: 0,
    //   mainAxisMargin: 0,
    //   minThumbLength: 0,
    //   showTrackOnHover: true,
    //   interactive: true
    // )
  );
}