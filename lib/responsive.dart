import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
      required this.desktop,
      this.tablet,
      this.mobaileLarge,
      required this.mobile})
      : super(key: key);
  final Widget desktop;
  final Widget? tablet;
  final Widget? mobaileLarge;
  final Widget mobile;

  static bool isDisktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    }
    if (_size.width < 1024 && tablet != null) {
      return tablet!;
    }
    if (_size.width < 700 && mobaileLarge != null) {
      return mobaileLarge!;
    }
    else {
      return mobile;
    }
  }
}