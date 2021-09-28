import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_delivery_app/presentation/pages/forgot_password/forgot_password.dart';

void main() {
  testWidgets("TEsting widget", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Container(child: Text("25")),
    ));

    await tester.pump();

    final text = find.text("25");
    expect(text, findsOneWidget);
  });
}
