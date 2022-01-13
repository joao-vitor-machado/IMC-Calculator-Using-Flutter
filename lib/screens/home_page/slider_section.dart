import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class sliderSection extends StatefulWidget {
  final String label;
  final int limit;
  final int min;
  var jump;
  int? value;

  sliderSection({
    Key? key,
    required this.label,
    required this.limit,
    required this.min,
    this.jump,
  }) : super(key: key);

  get getMin => min;
  get getMax => limit;
  get getLabel => label;
  get getJump => jump;
  get getValue => value;

  @override
  _sliderSectionState createState() => _sliderSectionState();
}

class _sliderSectionState extends State<sliderSection> {
  int _value= 0;

  @override
  void initState(){
    super.initState();
    _value = widget.getMin;
  }

  @override
  Widget build(BuildContext context) {
    widget.value = _value;
    return Column(
      children: [
        Text(widget.label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        NumberPicker(
          value: _value,
          maxValue: widget.getMax,
          minValue: widget.getMin,
          step: (widget.getJump) == null ? 1 : widget.jump,
          onChanged: (value) => setState(() {
            _value = value;
            // widget.value = value;

          }),
        ),

      ],
    );
  }
}
