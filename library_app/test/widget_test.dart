import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:library_app/main.dart';
import 'package:library_app/providers/book_provider.dart';
import 'package:library_app/providers/order_provider.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // We need to wrap it in Providers because LibraryApp expects them (or main sets them up).
    // Actually, LibraryApp sets up MultiProvider inside itself in main.dart.
    // So we just pump LibraryApp.
    await tester.pumpWidget(const LibraryApp());

    // Verify that the title is present (Library).
    expect(find.text('Library'), findsOneWidget);
  });
}