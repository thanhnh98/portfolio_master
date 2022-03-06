import 'package:flutter/material.dart';

class FlowMenu extends StatefulWidget {
  List<Widget> children;
  FlowMenu({this.children, Key key}) : super(key: key);

  @override
  State<FlowMenu> createState() => _FlowMenuState(children: children);
}

class _FlowMenuState extends State<FlowMenu> with SingleTickerProviderStateMixin {

  _FlowMenuState({this.children});

  List<Widget> children;
  AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  Widget flowMenuItem(Widget widget) {
    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
      children:
      children.map<Widget>((Widget widget) => flowMenuItem(widget)).toList(),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i).width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0,
          0,
        ),
      );
    }
  }
}
