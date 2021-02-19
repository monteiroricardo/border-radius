import 'package:border_radius/widgets/slider_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _valueButtonLeft = 0;
  double _valueButtonRigth = 0;
  double _valueTopLeft = 0;
  double _valueTopRigth = 0;
  final style =
      TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            Colors.black,
            Color(0xff131219),
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SliderWidget(_valueTopRigth, (_value) {
            setState(() {
              _valueTopRigth = _value;
            });
          }, 2, 200.0, 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SliderWidget(_valueTopLeft, (_value) {
                setState(() {
                  _valueTopLeft = _value;
                });
              }, 1, 16.0, 200.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_valueTopLeft),
                    bottomRight: Radius.circular(_valueButtonRigth),
                    bottomLeft: Radius.circular(_valueButtonLeft),
                    topRight: Radius.circular(_valueTopRigth),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xff3d4fad),
                      Color(0xffee5e99),
                    ],
                  ),
                ),
                height: 180,
                width: 180,
              ),
              SliderWidget(_valueButtonRigth, (_value) {
                setState(() {
                  _valueButtonRigth = _value;
                });
              }, 3, 16.0, 200.0),
            ],
          ),
          SliderWidget(_valueButtonLeft, (_value) {
            setState(() {
              _valueButtonLeft = _value;
            });
          }, 4, 200.0, 16.0),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xff131219),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(
                  'topLeft: ${_valueTopLeft.toStringAsFixed(0)}',
                  style: style,
                ),
                Text(
                  'bottomRight: ${_valueButtonRigth.toStringAsFixed(0)}',
                  style: style,
                ),
                Text(
                  'bottomLeft: ${_valueButtonLeft.toStringAsFixed(0)}',
                  style: style,
                ),
                Text(
                  'topRight:${_valueTopRigth.toStringAsFixed(0)}',
                  style: style,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
