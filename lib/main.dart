import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.grey[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldice = 1;
  int rdice = 1;

  void rolldice() {
    setState(() {
      ldice = Random().nextInt(6) + 1;
      rdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rolldice();
                });
              },
              child: Image.asset('images/dice$ldice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rolldice();
                });
              },
              child: Image.asset('images/dice$rdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
