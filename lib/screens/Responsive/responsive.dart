import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tab;

  const ResponsiveWidget({super.key, required this.mobile, required this.tab});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 580) {
          //for images1 & images2
          return mobile;
        } else {
          return tab; 
        }
      },
    );
  }
}

class ResponsiveWidget1 extends StatelessWidget {
  final Widget mobile;
  final Widget tab;

  const ResponsiveWidget1({super.key, required this.mobile, required this.tab});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 930) {
          //for images1 & images2
          return mobile;
        } else {
          return tab;
        }
      },
    );
  }
}
