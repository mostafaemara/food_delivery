import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("TEsting widget", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: SizedBox(child: Text("25")),
    ));

    await tester.pump();

    final text = find.text("25");
    expect(text, findsOneWidget);
  });
}
