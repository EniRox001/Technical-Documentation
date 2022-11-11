import 'package:flutter/material.dart';

class WCodeSnippet extends StatelessWidget {
  const WCodeSnippet({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(26.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black12,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class WWebHeader extends StatelessWidget {
  const WWebHeader({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class WWebText extends StatelessWidget {
  const WWebText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 20.0,
          height: 1.5,
        ),
      ),
    );
  }
}

class WListItem extends StatelessWidget {
  const WListItem({
    Key? key,
    required this.text,
    this.padExt = 32.0,
  }) : super(key: key);

  final String text;
  final double padExt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(padExt, 10.0, 0, 10.0),
      child: Row(
        children: [
          const Icon(
            Icons.circle,
            size: 8.0,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WNavBarButton extends StatelessWidget {
  const WNavBarButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.bottomBorderSide = const BorderSide(
      color: Colors.black,
    ),
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final BorderSide bottomBorderSide;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: bottomBorderSide,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 15, 30.0, 15),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
