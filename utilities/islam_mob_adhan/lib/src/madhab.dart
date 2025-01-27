import 'package:islam_mob_adhan/src/internal/shadow_length.dart';

/// Represents the Madhab (Islamic school of thought) for calculating Asr prayer time.
enum Madhab {
  /// Shafi'i school of thought.
  shafi,

  /// Hanafi school of thought.
  hanafi,
}

/// Extension to provide additional functionality for the [Madhab] enum.
extension MadhabExtensions on Madhab {
  /// Returns the [ShadowLength] associated with the Madhab.
  ///
  /// - Shafi'i uses a shadow length of 1 (single shadow length).
  /// - Hanafi uses a shadow length of 2 (double shadow length).
  ShadowLength get shadowLength {
    switch (this) {
      case Madhab.shafi:
        return ShadowLength.single;
      case Madhab.hanafi:
        return ShadowLength.doubleLength;
    }
  }
}
