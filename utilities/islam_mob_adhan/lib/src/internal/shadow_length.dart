class ShadowLength {
  final double _value;

  const ShadowLength._(this._value);

  /// Returns the shadow length value.
  double get value => _value;

  /// Represents a shadow length of 1.0 (single shadow length).
  static const ShadowLength single = ShadowLength._(1.0);

  /// Represents a shadow length of 2.0 (double shadow length).
  static const ShadowLength doubleLength = ShadowLength._(2.0);
}
