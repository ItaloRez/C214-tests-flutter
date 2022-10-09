import 'package:flutter_test/flutter_test.dart';
import 'package:simplistic_calculator/person.dart';

void main() {
  // Suite
  late Person person;

  setUpAll(() {
    person = Person(name: 'John', age: 30, height: 1.80, weight: 80);
  });

  group('Testar os atributos da pessoa', () {
    // Group
    test('Testar se o nome da pessoa é John', () {
      // Test
      expect(person.name, 'John');
    }, timeout: const Timeout(Duration(seconds: 1)));

    test('Testar se a idade da pessoa é 30', () {
      expect(person.age, 30);
    });
  });

  group('Testar o IMC da pessoa', () {
    test('Testar se o IMC da pessoa é 24.69', () {
      expect(person.imc, 24.69);
    });

    test('Testar se o status do IMC da pessoa é Peso normal', () {
      expect(person.imcStatus, 'Peso normal');
    });
  });

  tearDownAll(() {
    person = Person(name: '', age: 0, height: 0, weight: 0);
  });
}
