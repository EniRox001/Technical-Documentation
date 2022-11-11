import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../utils/widgets.dart';
import '../utils/components.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener =
    ItemPositionsListener.create();
void navigate(index) {
  itemScrollController.scrollTo(
      index: index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutCubic);
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
              child: ListView(
                padding: const EdgeInsets.all(0),
                shrinkWrap: false,
                scrollDirection: Axis.vertical,
                children: [
                  WNavBarButton(
                    onTap: () {
                      navigate(0);
                    },
                    text: 'JS Documentation',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  WNavBarButton(
                      onTap: () {
                        navigate(0);
                      },
                      text: 'Introduction'),
                  WNavBarButton(
                      onTap: () {
                        navigate(5);
                      },
                      text: 'What you should already know'),
                  WNavBarButton(
                      onTap: () {
                        navigate(10);
                      },
                      text: 'JavaScript and Java'),
                  WNavBarButton(
                      onTap: () {
                        navigate(14);
                      },
                      text: 'Hello world'),
                  WNavBarButton(
                      onTap: () {
                        navigate(18);
                      },
                      text: 'Variables'),
                  WNavBarButton(
                      onTap: () {
                        navigate(22);
                      },
                      text: 'Declaring variables'),
                  WNavBarButton(
                      onTap: () {
                        navigate(33);
                      },
                      text: 'Variable scope'),
                  WNavBarButton(
                      onTap: () {
                        navigate(39);
                      },
                      text: 'Global variables'),
                  WNavBarButton(
                      onTap: () {
                        navigate(42);
                      },
                      text: 'Constants'),
                  WNavBarButton(
                      onTap: () {
                        navigate(51);
                      },
                      text: 'Data types'),
                  WNavBarButton(
                      onTap: () {
                        navigate(61);
                      },
                      text: 'if...else statement'),
                  WNavBarButton(
                      onTap: () {
                        navigate(73);
                      },
                      text: 'while statement'),
                  WNavBarButton(
                      onTap: () {
                        navigate(87);
                      },
                      text: 'Function declarations'),
                  WNavBarButton(
                    onTap: () {
                      navigate(97);
                    },
                    text: 'Reference',
                    bottomBorderSide: BorderSide.none,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 32.0, 0.0, 32.0),
              child: ScrollablePositionedList.builder(
                itemCount: mainContent.length,
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
                itemBuilder: (context, index) => mainContent[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
