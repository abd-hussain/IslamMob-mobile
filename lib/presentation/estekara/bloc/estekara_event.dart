part of 'estekara_bloc.dart';

/// Events for the Istikhara (Estekara) BLoC.
///
/// This sealed class defines all possible events for managing the Islamic
/// Istikhara (guidance prayer) functionality. These events handle:
/// - **Initial content loading** for Istikhara prayers and guidance
///
/// The events support the Islamic practice of seeking Allah's guidance
/// through Istikhara prayer when making important life decisions, providing
/// Muslims with the proper prayers and instructions according to Islamic
/// teachings and Sunnah practices.
@freezed
class EstekaraEvent with _$EstekaraEvent {
  /// Event to load initial Istikhara content and setup.
  ///
  /// This event triggers the loading of Istikhara prayers, instructions,
  /// and guidance content. It also sets up language direction preferences
  /// for proper display of Arabic text and RTL languages.
  ///
  /// The event ensures that Muslims have access to authentic Istikhara
  /// content with proper formatting and language support for this
  /// important Islamic spiritual practice.
  const factory EstekaraEvent.fillInitialValue() = _FillInitialValue;
}
