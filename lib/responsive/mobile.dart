import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../utils/widgets.dart';
import '../utils/components.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener =
    ItemPositionsListener.create();
void navigate(index, context) {
  itemScrollController.scrollTo(
      index: index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic);
  Navigator.pop(context);
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'JS Documentation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        backgroundColor: Colors.amber,
        child: ListView(
          padding: const EdgeInsets.all(0),
          shrinkWrap: false,
          scrollDirection: Axis.vertical,
          children: [
            WNavBarButton(
              onTap: () {
                navigate(0, context);
              },
              text: 'JS Documentation',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            WNavBarButton(
                onTap: () {
                  navigate(0, context);
                },
                text: 'Introduction'),
            WNavBarButton(
                onTap: () {
                  navigate(5, context);
                },
                text: 'What you should already know'),
            WNavBarButton(
                onTap: () {
                  navigate(10, context);
                },
                text: 'JavaScript and Java'),
            WNavBarButton(
                onTap: () {
                  navigate(14, context);
                },
                text: 'Hello world'),
            WNavBarButton(
                onTap: () {
                  navigate(18, context);
                },
                text: 'Variables'),
            WNavBarButton(
                onTap: () {
                  navigate(22, context);
                },
                text: 'Declaring variables'),
            WNavBarButton(
                onTap: () {
                  navigate(33, context);
                },
                text: 'Variable scope'),
            WNavBarButton(
                onTap: () {
                  navigate(39, context);
                },
                text: 'Global variables'),
            WNavBarButton(
                onTap: () {
                  navigate(42, context);
                },
                text: 'Constants'),
            WNavBarButton(
                onTap: () {
                  navigate(51, context);
                },
                text: 'Data types'),
            WNavBarButton(
                onTap: () {
                  navigate(61, context);
                },
                text: 'if...else statement'),
            WNavBarButton(
                onTap: () {
                  navigate(73, context);
                },
                text: 'while statement'),
            WNavBarButton(
                onTap: () {
                  navigate(87, context);
                },
                text: 'Function declarations'),
            WNavBarButton(
              onTap: () {
                navigate(97, context);
              },
              text: 'Reference',
              bottomBorderSide: BorderSide.none,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ScrollablePositionedList.builder(
          itemCount: mainContent.length,
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          itemBuilder: (context, index) => mainContent[index],
        ),
      ),
    );
  }
}
