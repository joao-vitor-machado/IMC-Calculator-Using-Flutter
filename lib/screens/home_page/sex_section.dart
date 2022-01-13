import 'package:flutter/material.dart';

class sexSection extends StatefulWidget {
  const sexSection({Key? key}) : super(key: key);

  @override
  _sexSectionState createState() => _sexSectionState();
}

class _sexSectionState extends State<sexSection> {

  bool _sex = true;
  get() => _sex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        ElevatedButton(
            onPressed:_sex ? null : (){
          setState(() {
            _sex = true;

          });
        }, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.female,
            size: 100,),
            Text("Woman"),
          ],
        ),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(150, 200),
          )
        ),
        ElevatedButton(onPressed: !_sex ? null : (){
          setState(() {
            _sex = false;
          });
        }, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.male,
            size: 100,),
            Text("Man"),
          ],
        ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(150, 200),
            )
        )
      ],
    );
  }
}
