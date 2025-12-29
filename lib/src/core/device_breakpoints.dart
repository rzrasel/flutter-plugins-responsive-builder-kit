import 'device_breakpoint_range.dart';

class DeviceBreakpoints {
  /// Minimum width for extra-large desktop screens (default: 4096px).
  final DeviceBreakpointRange desktopExtraLarge;
  /// Minimum width for large desktop screens (default: 3840px).
  final DeviceBreakpointRange desktopLarge;
  /// Minimum width for normal desktop screens (default: 1920px).
  final DeviceBreakpointRange desktopNormal;
  /// Minimum width for small desktop screens (default: 900px).
  final DeviceBreakpointRange desktop;

  // Tablet variants
  /// Minimum width for large tablet screens (default: 850px).
  final DeviceBreakpointRange tabletLarge;
  /// Minimum width for normal tablet screens (default: 768px).
  final DeviceBreakpointRange tabletNormal;
  /// Minimum width for small tablet screens (default: 650px).
  final DeviceBreakpointRange tablet;
  // Mobile variants
  /// Minimum width for extra-large mobile screens (default: 600px).
  final DeviceBreakpointRange mobileExtraLarge;
  /// Minimum width for large mobile screens (default: 414px).
  final DeviceBreakpointRange mobileLarge;
  /// Minimum width for normal mobile screens (default: 375px).
  final DeviceBreakpointRange mobileNormal;
  /// Minimum width for small mobile screens (default: 250px).
  final DeviceBreakpointRange mobile;
  /// Minimum width for small watch screens (default: 250px).
  final DeviceBreakpointRange watch;

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