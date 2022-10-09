class Person {
  final String name;
  final int age;
  final double height;
  final double weight;
  Person(
      {required this.name,
      required this.age,
      required this.height,
      required this.weight});

  double get imc {
    var imc = weight / (height * height);
    return double.parse(imc.toStringAsFixed(2));
  }

  String get imcStatus {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc < 25) {
      return 'Peso normal';
    } else if (imc >= 25 && imc < 30) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      return 'Obesidade grau 1';
    } else if (imc >= 35 && imc < 40) {
      return 'Obesidade grau 2';
    } else {
      return 'Obesidade grau 3';
    }
  }

  @override
  String toString() {
    return 'Person(name: $name, age: $age, height: $height, weight: $weight)';
  }
}
