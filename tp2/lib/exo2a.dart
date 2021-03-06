import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exo2a extends StatefulWidget {
  final String title;
  Exo2a({Key key, @required this.title}) : super(key: key);

  @override
  _Exo2a createState() => _Exo2a(title: this.title);
}

class _Exo2a extends State<Exo2a> {
  String title;
  _Exo2a({this.title});

  double _sliderRotateX = 0;
  double _sliderRotateZ = 0;
  bool _mirrored = false;
  double _scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(color: Colors.white),
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..rotateX(_sliderRotateX * pi / 180)
                ..rotateY(_mirrored ? pi : 0)
                ..rotateZ(_sliderRotateZ * pi / 180)
                ..scale(_scale),
              child: Image.network('https://picsum.photos/512'),
            ),
          ),
          Row(children: <Widget>[
            Text("Rotate X :"),
            Expanded(
              child: Slider(
                value: _sliderRotateX,
                min: 0,
                max: 360,
                label: _sliderRotateX.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderRotateX = value;
                  });
                },
              ),
            ),
          ]),
          Row(children: <Widget>[
            Text("Rotate Z :"),
            Expanded(
              child: Slider(
                value: _sliderRotateZ,
                min: 0,
                max: 360,
                label: _sliderRotateZ.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderRotateZ = value;
                  });
                },
              ),
            ),
          ]),
          Row(children: <Widget>[
            Text("Scale :"),
            Expanded(
              child: Slider(
                value: _scale,
                min: -1,
                max: 2,
                label: _scale.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _scale = value;
                  });
                },
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Expanded(
                child: Checkbox(
                  value: _mirrored,
                  onChanged: (bool value) {
                    setState(() {
                      _mirrored = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Text("Mirror"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
