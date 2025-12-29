class DeviceBreakpoints {
  /// Minimum width for extra-large desktop screens (default: 4096px).
  final double desktopExtraLarge;
  /// Minimum width for large desktop screens (default: 3840px).
  final double desktopLarge;
  /// Minimum width for normal desktop screens (default: 1920px).
  final double desktopNormal;
  /// Minimum width for small desktop screens (default: 900px).
  final double desktop;

  // Tablet variants
  /// Minimum width for large tablet screens (default: 850px).
  final double tabletLarge;
  /// Minimum width for normal tablet screens (default: 768px).
  final double tabletNormal;
  /// Minimum width for small tablet screens (default: 650px).
  final double tablet;
  // Mobile variants
  /// Minimum width for extra-large mobile screens (default: 600px).
  final double mobileExtraLarge;
  /// Minimum width for large mobile screens (default: 414px).
  final double mobileLarge;
  /// Minimum width for normal mobile screens (default: 375px).
  final double mobileNormal;
  /// Minimum width for small mobile screens (default: 250px).
  final double mobile;
  /// Minimum width for small watch screens (default: 250px).
  final double watch;

  const DeviceBreakpoints({
    this.desktopExtraLarge = 4096,
    this.desktopLarge = 3840,
    this.desktopNormal = 1920,
    this.desktop = 900,
    this.tabletLarge = 850,
    this.tabletNormal = 768,
    this.tablet = 650,
    this.mobileExtraLarge = 600,
    this.mobileLarge = 414,
    this.mobileNormal = 375,
    this.mobile = 250,
    this.watch = 250,
  });
}

import 'package:flutter/material.dart';
import '../core/device_breakpoints.dart';

/// Utility class for quick responsive checks without full [ResponsiveBuilder].
/// Use static methods to detect screen types based on width thresholds.
class Responsive {
  static bool _init = false;
  static late DeviceBreakpoints _breakpoints;

  static void init({
    required BuildContext context,
    DeviceBreakpoints breakpoints = const DeviceBreakpoints(),
  }) {
    _breakpoints = breakpoints;
    _init = true;
  }

  static void _checkInit() {
    assert(
    _init,
    "\nYou must call Responsive.init() inside a Widget build method after MaterialApp.\n",
    );
  }

  static double _width(BuildContext context) {
    _checkInit();
    return MediaQuery.sizeOf(context).width;
  }

  /// Extra-large desktop (4096+)
  static bool isExtraLargeScreen(BuildContext context) {
    return _width(context) >= _breakpoints.desktopExtraLarge;
  }

  /// Large desktop (3840 - 4095)
  static bool isLargeScreen(BuildContext context) {
    return _width(context) >= _breakpoints.desktopLarge && _width(context) < _breakpoints.desktopExtraLarge;
  }

  /// Normal desktop (1920 - 3839)
  static bool isDesktopNormal(BuildContext context) {
    return _width(context) >= _breakpoints.desktopNormal && _width(context) < _breakpoints.desktopLarge;
  }

  /// Desktop (900 - 1919)
  static bool isDesktop(BuildContext context) {
    return _width(context) >= _breakpoints.desktop && _width(context) < _breakpoints.desktopNormal;
  }

  /// Tablet Large (850 - 899)
  static bool isTabletLarge(BuildContext context) {
    return _width(context) >= _breakpoints.tabletLarge && _width(context) < _breakpoints.desktop;
  }

  /// Tablet Normal (768 - 849)
  static bool isTabletNormal(BuildContext context) {
    return _width(context) >= _breakpoints.tabletNormal && _width(context) < _breakpoints.tabletLarge;
  }

  /// Tablet (650 - 767)
  static bool isTablet(BuildContext context) {
    return _width(context) >= _breakpoints.tablet && _width(context) < _breakpoints.tabletNormal;
  }

  /// Mobile Extra Large (600 - 649)
  static bool isMobileExtraLarge(BuildContext context) {
    return _width(context) >= _breakpoints.mobileExtraLarge && _width(context) < _breakpoints.tablet;
  }

  /// Mobile Large (414 - 599)
  static bool isMobileLarge(BuildContext context) {
    return _width(context) >= _breakpoints.mobileLarge && _width(context) < _breakpoints.mobileExtraLarge;
  }

  /// Mobile Normal (375 - 413)
  static bool isMobileNormal(BuildContext context) {
    return _width(context) >= _breakpoints.mobileNormal && _width(context) < _breakpoints.mobileLarge;
  }

  /// Mobile (250 - 374)
  static bool isMobile(BuildContext context) {
    return _width(context) >= _breakpoints.mobile && _width(context) < _breakpoints.mobileNormal;
  }

  /// Watch (0 - 249)
  static bool isWatch(BuildContext context) {
    return _width(context) < _breakpoints.watch;
  }
}

Responsive.init(
  context: context,
  breakpoints: DeviceBreakpoints(
    desktop: 900,
    tablet: 650,
    mobile: 250,
    watch: 250,
  ),
);

- if i use 4 break points like desktop, tablet, mobile, watch
- if width is = 3200 it true for isDesktop i want get depend on seted DeviceBreakpoints
- also if width is = 850 it should true for isTablet i want get depend on seted DeviceBreakpoints
- also if width is = 600 it should true for isMobile i want get depend on seted DeviceBreakpoints

- but when i use: Responsive.init(
  context: context,
  breakpoints: DeviceBreakpoints(
  desktopNormal: 920,
  desktop: 900,
  tablet: 650,
  mobile: 250,
  watch: 250,
  ),
  );
- if width is = 3200 it true for isDesktopNormal i want get depend on seted DeviceBreakpoints