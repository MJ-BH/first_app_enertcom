import 'package:first_app/componnets.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("THis Is App ")),
      backgroundColor: Colors.cyanAccent,
      body: const FirstView(),
    );
  }
}

class FirstView extends StatefulWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  _FirstViewState createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  var comp = Componnents();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        comp.myAvatar('images/6-min-min.jpg'),
        Padding(
            padding: const EdgeInsets.all(40.0),
            child: comp.myText(" hello is me Mohamed JIhed", comp.myStyle2)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            comp.myButton("back",
                comp.buttonStyle(Colors.blue, Colors.green, comp.myStyle)),
            comp.myButton(
                "next",
                comp.buttonStyle(
                    Colors.white38, Colors.black26, comp.myStyle2)),
          ],
        ),
      ],
    );
  }
}
