/// Defines a range of device breakpoints using minimum and maximum width values.
///
/// Use this class to represent inclusive-exclusive ranges for screen size detection
/// (e.g., min inclusive, max exclusive). Commonly used in responsive layouts to
/// define thresholds for device categories like mobile or tablet.
class DeviceBreakpointRange {
  /// The minimum width (inclusive) for this breakpoint range.
  final double min;

  /// The maximum width (exclusive) for this breakpoint range.
  final double max;

  /// Creates a [DeviceBreakpointRange] with required minimum and maximum values.
  ///
  /// [min] should be less than [max] for valid ranges. Throws a [RangeError]
  /// if [min] >= [max].
  const DeviceBreakpointRange({
    required this.min,
    required this.max,
  }) : assert(min < max, 'min must be less than max');

  /// Checks if the given [width] falls within this range (inclusive min, exclusive max).
  bool contains(double width) => width >= min && width < max;

  @override
  String toString() => 'DeviceBreakpointRange(min: $min, max: $max)';
}