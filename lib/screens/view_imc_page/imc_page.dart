import 'package:flutter/material.dart';
import 'package:flutter_tests/imcCalculator/IMC.dart';
import 'package:emojis/emojis.dart';

class IMCPage extends StatelessWidget {
  const IMCPage({Key? key}) : super(key: key);

  static const routeName = '/imc_page';

  String emojiVeryfier(imcValue){
    if(imcValue < 17){
      return Emojis.faceWithMonocle;
    }else if(imcValue >= 17 && imcValue < 18.5 ){
      return Emojis.hushedFace;
    }else if(imcValue >= 18.5 && imcValue <= 24.9){
      return Emojis.partyingFace;
    }else if(imcValue >= 25 && imcValue <= 29.9){
      return Emojis.hushedFace;
    }else if(imcValue >= 30 && imcValue <= 34.9){
      return Emojis.faceWithMonocle;
    }else if(imcValue >= 35 && imcValue <= 39.9){
      return Emojis.disguisedFace;
    }else{
      return Emojis.alien;
    }
  }

  @override
  Widget build(BuildContext context) {

    final imc = ModalRoute.of(context)!.settings.arguments as IMC;

    return Scaffold(
      appBar: AppBar(
        title: Text("Seu IMC"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(emojiVeryfier(imc.imcValue),
              style: const TextStyle(
                fontSize: 40
              ),),
              Text(imc.imcSatus,
              style: const TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 23
              ),),
            ],
          ),
          Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Seu peso atual: ${imc.weight}kg"),
                Text("Sua altura atual: ${imc.height}m"),
                Text("IMC resultante: ${imc.imcValue.toStringAsFixed(2)}"),
              ],
            ),
          ),
        ],
      )
    );
  }
}
