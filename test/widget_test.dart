// @Skip('Não implementado')
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simplistic_calculator/main.dart';

void main() {
  testWidgets('Verifica se todos os botões estão presentes', (tester) async {
    // Renderiza o widget
    await tester.pumpWidget(const ProviderScope(child: CalculatorApp()));

    // Verifica se os botões estão presentes
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('6'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('9'), findsOneWidget);
    expect(find.text('+'), findsOneWidget);
    expect(find.text('-'), findsOneWidget);
    expect(find.text('*'), findsOneWidget);
    expect(find.text('/'), findsOneWidget);
    expect(find.text('.'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
  });

  testWidgets('Testar soma de 2 + 1', (tester) async {
    // Renderiza o widget
    await tester.pumpWidget(
      const ProviderScope(
        child: CalculatorApp(),
      ),
    );

    await tester.tap(find.text('2'));
    await tester.tap(find.text('+'));
    await tester.tap(find.text('1'));
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify that our calculator evaluates correctly.
    expect(find.text('3'), findsNWidgets(2));
  });

  testWidgets('Testar subtração de 2 - 1', (tester) async {
    // Renderiza o widget
    await tester.pumpWidget(
      const ProviderScope(
        child: CalculatorApp(),
      ),
    );

    await tester.tap(find.text('2'));
    await tester.tap(find.text('-'));
    await tester.tap(find.text('1'));
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify that our calculator evaluates correctly.
    expect(find.text('1'), findsNWidgets(2));
  });

  testWidgets('Testar multiplicação de 2 * 1', (tester) async {
    // Renderiza o widget
    await tester.pumpWidget(
      const ProviderScope(
        child: CalculatorApp(),
      ),
    );

    await tester.tap(find.text('2'));
    await tester.tap(find.text('*'));
    await tester.tap(find.text('1'));
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify that our calculator evaluates correctly.
    expect(find.text('2'), findsNWidgets(2));
  });

  testWidgets('Testar divisão de 2 / 1', (tester) async {
    // Renderiza o widget
    await tester.pumpWidget(
      const ProviderScope(
        child: CalculatorApp(),
      ),
    );

    await tester.tap(find.text('2'));
    await tester.tap(find.text('/'));
    await tester.tap(find.text('1'));
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify that our calculator evaluates correctly.
    expect(find.text('2'), findsNWidgets(2));
  });
}
