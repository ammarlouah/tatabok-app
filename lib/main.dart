import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('تطابق صورة'),
        backgroundColor: Colors.indigo[800],
      ),
      // ignore: prefer_const_constructors
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  // ignore: non_constant_identifier_names
  int LeftImageNumber = 1;
  int RightImageNumber = 2;
  void changeNumber() {
    LeftImageNumber = Random().nextInt(8) + 1;
    RightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // ignore: prefer_const_constructors
        Text(
          LeftImageNumber == RightImageNumber
              ? 'مبروك لقد نجحت'
              : 'حاول مرة أخرى',
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeNumber();
                    });
                  },
                  child: Image.asset('images/image-$LeftImageNumber.png'),
                ),
              ),
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeNumber();
                    });
                  },
                  child: Image.asset('images/image-$RightImageNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
