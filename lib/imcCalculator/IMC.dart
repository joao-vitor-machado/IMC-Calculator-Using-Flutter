import 'package:emojis/emojis.dart';

class IMC {

  double height;
  double weight;
  double imcValue;
  String imcSatus;

  IMC(this.height, this.weight, this.imcValue, this.imcSatus);

   static calculate( double height, double weight){
    final imc = (weight / (height * height));
    return IMC(height, weight, imc, _compareIMCValue(imc));
  }

  static String _compareIMCValue(double imcValue){
    if(imcValue < 17){
      return "Muito Abaixo do peso";
    }else if(imcValue >= 17 && imcValue < 18.5 ){
      return "Abaixo do peso";
    }else if(imcValue >= 18.5 && imcValue <= 24.9){
      return "Peso normal";
    }else if(imcValue >= 25 && imcValue <= 29.9){
      return "Acima do peso";
    }else if(imcValue >= 30 && imcValue <= 34.9){
      return "Obesidade I";
    }else if(imcValue >= 35 && imcValue <= 39.9){
      return "Obesidade II(severa)";
    }else{
      return "Obesidade III(mórbida)";
    }
  }
}
