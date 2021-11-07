import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Componnents {
  var myStyle =
      GoogleFonts.poppins(color: Colors.grey[700], fontWeight: FontWeight.bold);
  var myStyle2 = GoogleFonts.fruktur(
      color: Colors.red[700], fontWeight: FontWeight.normal);
  buttonStyle(Color color1, Color color2, TextStyle style) {
    return ElevatedButton.styleFrom(
        primary: color1,
        onPrimary: color2,
        textStyle: style,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: color2, width: 1.2)));
  }

  myAvatar(String path) {
    return CircleAvatar(
      backgroundImage: AssetImage(path),
      radius: 200,
    );
  }

  myText(String text, TextStyle mstyle) {
    return Text(
      text,
      style: mstyle,
    );
  }

  myButton(String text, ButtonStyle style) {
    return ElevatedButton(
        style: style,
        onPressed: () {
          print("object");
        },
        child: Text(text));
  }
}
