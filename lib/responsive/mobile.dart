import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mobile View',
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
