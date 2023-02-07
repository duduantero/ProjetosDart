import 'dart:io';
void main(){
  print("Informe seu peso em Kilogramas(Kg):");
  String? pesoString = stdin.readLineSync();
  double peso = double.parse(pesoString!);
  print("informe sua altura em metros(m)");
  String? alturaString = stdin.readLineSync();
  double altura = double.parse(alturaString!);
  imc(altura: altura,peso: peso);
}
void imc({required double peso, required double altura}){
  var imc = peso/(altura*altura);
  print(imc);
  if(imc < 18.5){
    print("Baixo peso");
  }else if(imc >=18.5 && imc < 24.9){
    print("Peso normal");
  }else if(imc > 24.9 && imc < 29.9){
    print("Excesso de peso");
  }else if (imc >29.9 && imc < 35){
    print("Obesidade");
  }else{
    print("Obesidade extrema");
  }
}
