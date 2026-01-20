import 'device_breakpoint_range.dart';

/// Defines customizable breakpoint ranges for responsive device detection in Flutter apps.
///
/// Each property represents a screen size category (e.g., mobile, tablet, desktop) with a
/// [DeviceBreakpointRange] containing [min] (inclusive) and [max] (exclusive) width thresholds.
/// Use this class to configure responsive layouts, such as in a [Responsive] utility, by
/// passing a custom instance to initialization methods. Defaults follow common responsive
/// design patterns (e.g., mobile-first breakpoints).
///
/// Example:
/// ```dart
/// final customBreakpoints = DeviceBreakpoints(
///   desktop: DeviceBreakpointRange(min: 1000, max: double.infinity),
///   tablet: DeviceBreakpointRange(min: 700, max: 1000),
/// );
/// ```
class DeviceBreakpoints {
  /// Breakpoint range for extra-large desktop screens (default: >=4096px).
  final DeviceBreakpointRange desktopExtraLarge;
  /// Breakpoint range for large desktop screens (default: 3840px - 4095px).
  final DeviceBreakpointRange desktopLarge;
  /// Breakpoint range for normal desktop screens (default: 1920px - 3839px).
  final DeviceBreakpointRange desktopNormal;
  /// Breakpoint range for small desktop screens (default: 900px - 1919px).
  final DeviceBreakpointRange desktop;

  // Tablet variants
  /// Breakpoint range for large tablet screens (default: 850px - 899px).
  final DeviceBreakpointRange tabletLarge;
  /// Breakpoint range for normal tablet screens (default: 768px - 849px).
  final DeviceBreakpointRange tabletNormal;
  /// Breakpoint range for small tablet screens (default: 650px - 767px).
  final DeviceBreakpointRange tablet;
  // Mobile variants
  /// Breakpoint range for extra-large mobile screens (default: 600px - 649px).
  final DeviceBreakpointRange mobileExtraLarge;
  /// Breakpoint range for large mobile screens (default: 414px - 599px).
  final DeviceBreakpointRange mobileLarge;
  /// Breakpoint range for normal mobile screens (default: 375px - 413px).
  final DeviceBreakpointRange mobileNormal;
  /// Breakpoint range for small mobile screens (default: 250px - 374px).
  final DeviceBreakpointRange mobile;
  /// Breakpoint range for watch-sized screens (default: 0px - 249px).
  final DeviceBreakpointRange watch;

  /// Creates a [DeviceBreakpoints] instance with customizable ranges for each screen variant.
  ///
  /// All parameters are optional and default to standard responsive design thresholds.
  /// Use [double.infinity] for unbounded upper limits (e.g., for the largest desktop category).
  /// Throws a [RangeError] if any range has [min] >= [max] (enforced by [DeviceBreakpointRange]).
  const DeviceBreakpoints({
    this.desktopExtraLarge = const DeviceBreakpointRange(min: 4096, max: double.infinity),
    this.desktopLarge = const DeviceBreakpointRange(min: 3840, max: 4096),
    this.desktopNormal = const DeviceBreakpointRange(min: 1920, max: 3840),
    this.desktop = const DeviceBreakpointRange(min: 900, max: 1920),
    this.tabletLarge = const DeviceBreakpointRange(min: 850, max: 900),
    this.tabletNormal = const DeviceBreakpointRange(min: 768, max: 850),
    this.tablet = const DeviceBreakpointRange(min: 650, max: 768),
    this.mobileExtraLarge = const DeviceBreakpointRange(min: 600, max: 650),
    this.mobileLarge = const DeviceBreakpointRange(min: 414, max: 600),
    this.mobileNormal = const DeviceBreakpointRange(min: 375, max: 414),
    this.mobile = const DeviceBreakpointRange(min: 250, max: 375),
    this.watch = const DeviceBreakpointRange(min: 0, max: 250),
  });
}