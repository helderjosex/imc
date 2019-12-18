import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc = weight / (height * height);

    result = "IMC = ${imc.toStringAsPrecision(2)}\n";
    if (imc < 18.5) {
      result += "Abaixo do Peso";
    } else if (imc >= 18.5 && imc <= 24.9) {
      result += "Peso Ideal";
    } else if (imc >= 25 && imc <= 29.9) {
      result += "Levemente acima do peso - Obesidade Grau I";
    } else if (imc >= 30 && imc <= 39.9) {
      result += "Obesidade - Grau II";
    } else if (imc >= 40) {
      result += "Obesidade Grave - Grau III";
    }
  }
}
