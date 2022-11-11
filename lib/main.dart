import 'package:flutter/material.dart';
import 'package:technical_documentation/responsive/mobile.dart';
import 'package:technical_documentation/responsive/tablet.dart';
import 'package:technical_documentation/responsive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Technical Documentation',
      home: TechnicalDocumentation(),
    );
  }
}

class TechnicalDocumentation extends StatefulWidget {
  const TechnicalDocumentation({super.key});

  @override
  State<TechnicalDocumentation> createState() => _TechnicalDocumentationState();
}

class _TechnicalDocumentationState extends State<TechnicalDocumentation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return (width < 450)
        ? const MobileView()
        : (width < 800)
            ? const TabletView()
            : const DesktopView();
  }
}
