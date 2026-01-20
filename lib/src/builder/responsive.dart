import 'package:flutter/material.dart';
import '../core/device_breakpoints.dart';

/// Utility class for quick responsive checks without full [ResponsiveBuilder].
/// Use static methods to detect screen types based on width thresholds.
class Responsive {
  static bool _init = false;
  static late DeviceBreakpoints _breakpoints;

  /// Initializes the [Responsive] utility with the given [context] and optional [breakpoints].
  ///
  /// Call this method once early in your app lifecycle (e.g., inside [MaterialApp.builder]
  /// or a top-level widget's [build] method) to cache breakpoints and enable detection.
  /// Throws an [AssertionError] if called without a valid [context].
  ///
  /// Example:
  /// ```dart
  /// Responsive.init(
  ///   context: context,
  ///   breakpoints: DeviceBreakpoints(
  ///     desktop: DeviceBreakpointRange(min: 1000, max: double.infinity),
  ///   ),
  /// );
  /// ```
  static void init({
    required BuildContext context,
    DeviceBreakpoints breakpoints = const DeviceBreakpoints(),
  }) {
    _breakpoints = breakpoints;
    _init = true;
  }

  static void _checkInit() {
    assert(_init, "You must call Responsive.init() inside a Widget build method after MaterialApp.");
  }

  static double _width(BuildContext context) {
    _checkInit();
    return MediaQuery.sizeOf(context).width;
  }

  /// Extra-large desktop (4096+)
  static bool isDesktopExtraLarge(BuildContext context) {
    return _width(context) >= _breakpoints.desktopExtraLarge.min;
  }

  /// Large desktop (3840 - 4095)
  static bool isDesktopLarge(BuildContext context) {
    return _width(context) >= _breakpoints.desktopLarge.min && _width(context) < _breakpoints.desktopLarge.max;
  }

  /// Normal desktop (1920 - 3839)
  static bool isDesktopNormal(BuildContext context) {
    return _width(context) >= _breakpoints.desktopNormal.min && _width(context) < _breakpoints.desktopNormal.max;
  }

  /// Desktop (900 - 1919)
  static bool isDesktop(BuildContext context) {
    return _width(context) >= _breakpoints.desktop.min && _width(context) < _breakpoints.desktop.max;
  }

  /// Tablet Large (850 - 899)
  static bool isTabletLarge(BuildContext context) {
    return _width(context) >= _breakpoints.tabletLarge.min && _width(context) < _breakpoints.tabletLarge.max;
  }

  /// Tablet Normal (768 - 849)
  static bool isTabletNormal(BuildContext context) {
    return _width(context) >= _breakpoints.tabletNormal.min && _width(context) < _breakpoints.tabletNormal.max;
  }

  /// Tablet (650 - 767)
  static bool isTablet(BuildContext context) {
    return _width(context) >= _breakpoints.tablet.min && _width(context) < _breakpoints.tablet.max;
  }

  /// Mobile Extra Large (600 - 649)
  static bool isMobileExtraLarge(BuildContext context) {
    return _width(context) >= _breakpoints.mobileExtraLarge.min && _width(context) < _breakpoints.mobileExtraLarge.max;
  }

  /// Mobile Large (414 - 599)
  static bool isMobileLarge(BuildContext context) {
    return _width(context) >= _breakpoints.mobileLarge.min && _width(context) < _breakpoints.mobileLarge.max;
  }

  /// Mobile Normal (375 - 413)
  static bool isMobileNormal(BuildContext context) {
    return _width(context) >= _breakpoints.mobileNormal.min && _width(context) < _breakpoints.mobileNormal.max;
  }

  /// Mobile (250 - 374)
  static bool isMobile(BuildContext context) {
    return _width(context) >= _breakpoints.mobile.min && _width(context) < _breakpoints.mobile.max;
  }

  /// Watch (0 - 249)
  static bool isWatch(BuildContext context) {
    return _width(context) < _breakpoints.watch.max;
  }
}