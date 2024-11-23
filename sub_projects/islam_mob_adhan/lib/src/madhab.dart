import 'internal/shadow_length.dart';

/// Madhab for determining how Asr is calculated
enum Madhab { shafi, hanafi }

extension MadhabExtensions on Madhab {
  ShadowLength getShadowLength() {
    switch (this) {
      case Madhab.shafi:
        return ShadowLength.single;
      case Madhab.hanafi:
        return ShadowLength.double;
    }
  }
}
