import 'package:flutter/material.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tablet View',
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
