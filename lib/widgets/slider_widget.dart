import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final _value;
  final onChanged;
  final int direction;
  final width;
  final heigth;
  SliderWidget(
      this._value, this.onChanged, this.direction, this.width, this.heigth);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.heigth,
      child: RotatedBox(
        quarterTurns: widget.direction,
        child: SliderTheme(
          data: SliderThemeData(
            trackHeight: 3,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
          ),
          child: Slider(
            inactiveColor: Colors.grey[200],
            activeColor: Colors.grey[200],
            value: widget._value,
            onChanged: widget.onChanged,
            max: 100.0,
            min: 0.0,
          ),
        ),
      ),
    );
  }
}
