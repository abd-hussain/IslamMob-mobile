/// Represents the shadow length used in Islamic prayer time calculations.
///
/// Shadow length is used to determine the timing of Asr prayer, which occurs
/// when the shadow of an object is equal to the object's height plus its
/// shadow at noon (Hanafi school) or when the shadow equals the object's
/// height (Shafi school).
class ShadowLength {
  final double _value;

  const ShadowLength._(this._value);

  /// Returns the shadow length value.
  double get value => _value;

  /// Represents a shadow length of 1.0 (single shadow length).
  static const ShadowLength single = ShadowLength._(1);

  /// Represents a shadow length of 2.0 (double shadow length).
  static const ShadowLength doubleLength = ShadowLength._(2);
}
