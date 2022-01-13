import 'package:flutter/material.dart';
import 'package:flutter_tests/imcCalculator/IMC.dart';
import 'package:flutter_tests/screens/home_page/button.dart';
import 'package:flutter_tests/screens/home_page/slider_section.dart';
import 'package:flutter_tests/screens/view_imc_page/imc_page.dart';
import 'sex_section.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    sliderSection metres = sliderSection(label: "metres", limit: 2, min: 0,);
    sliderSection centimetres = sliderSection(label: "centimetres", limit: 99, min: 0, jump: 10,);
    sliderSection kilograms = sliderSection(label: "kg", limit: 150, min: 12,);
    sliderSection grams = sliderSection(label: "g", limit: 999, min: 0, jump: 100,);

    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          return SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  sexSection(),
                  Column(
                    children: [
                      const Text("HEIGHT"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          metres,
                          centimetres,
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("WEIGHT"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          kilograms,
                          grams,
                        ],
                      ),
                    ],
                  ),

                  ButtonIMC(
                    onPressed: (){
                      final double height = (metres.getValue + (centimetres.getValue*0.01));
                      final double weight = (kilograms.getValue + (grams.getValue * 0.1));
                      var imc = IMC.calculate(height, weight);

                      print(height);
                      print(weight);
                      print(imc);

                      Navigator.pushNamed(context, IMCPage.routeName, arguments: imc);

                    },
                  ),
                ],
              ),
            ),
          );
        }
      )
    );


  }
}