import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/sorah_type_state.freezed.dart';

/// A sealed class representing the classification of Quranic Surahs (chapters).
///
/// This sealed class defines the two main categories of Quranic Surahs based
/// on the period and location of their revelation:
///
/// - **Makki (Meccan)**: Surahs revealed in Makkah before the Prophet's migration
///   to Madinah (Hijra). These Surahs typically focus on:
///   - Monotheism (Tawhid) and belief in Allah
///   - Stories of previous prophets
///   - The Day of Judgment and afterlife
///   - Moral and spiritual guidance
///   - Generally shorter verses with powerful, rhythmic language
///
/// - **Madani (Medinan)**: Surahs revealed in Madinah after the Hijra.
///   These Surahs typically focus on:
///   - Legal rulings and Islamic jurisprudence
///   - Social organization and community building
///   - Relations with other communities
///   - Detailed guidance for Muslim society
///   - Generally longer verses with detailed explanations
///
/// This classification is important for understanding the context, themes,
/// and application of different Quranic teachings.
@freezed
sealed class SowrahTypeState with _$SowrahTypeState {
  const factory SowrahTypeState.makyeh() = SowrahTypeStateMakyeh;
  const factory SowrahTypeState.madanyeh() = SowrahTypeStateMadanyeh;
}
