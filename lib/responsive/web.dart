import 'package:flutter/material.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Desktop View',
        ),
      ),
      body: Center(
        child: Text(
          MediaQuery.of(context).size.width.toString(),
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
