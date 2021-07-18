import 'package:flutter/material.dart';

class Customscrollbar extends StatelessWidget {
  final Widget child;
  final LinearGradient thumbcolor;

  const Customscrollbar({
    Key? key,
    required this.child,
    required this.thumbcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      child: child,
      thickness: 8.0,
      radius: Radius.circular(5.0),
      thumbColor: Color(0xfff1f0fd),
    );
  }
}
