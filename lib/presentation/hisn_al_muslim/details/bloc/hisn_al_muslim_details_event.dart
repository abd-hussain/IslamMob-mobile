part of 'hisn_al_muslim_details_bloc.dart';

/// Events for the Hisn Al-Muslim Details BLoC.
///
/// This sealed class defines all possible events for managing the detailed
/// view of Islamic supplications from Hisn Al-Muslim (Fortress of the Muslim).
/// These events handle:
/// - **Supplication initialization** with content and language setup
/// - **Favorite management** for bookmarking important supplications
/// - **Content preparation** for sharing Islamic supplications
/// - **Social sharing** of Islamic prayers and remembrances
///
/// The events support Muslims in accessing, managing, and sharing authentic
/// Islamic supplications for various life situations and daily practices.
@freezed
class HisnAlMuslimDetailsEvent with _$HisnAlMuslimDetailsEvent {
  /// Event to initialize the supplication details with content and settings.
  ///
  /// This event loads the selected Hisn Al-Muslim supplication with its
  /// Arabic text, translation, and metadata, setting up the detailed view
  /// for proper display and interaction.
  ///
  /// Parameters:
  /// - [item]: The Hisn Al-Muslim supplication model to display
  const factory HisnAlMuslimDetailsEvent.fillInitialValue(
      HisnAlMuslimModel? item) = _FillInitialValue;

  /// Event to toggle the favorite status of the current supplication.
  ///
  /// This event adds or removes the supplication from the user's favorites
  /// list, allowing Muslims to bookmark important supplications for quick
  /// access during their daily Islamic practices.
  const factory HisnAlMuslimDetailsEvent.updateFavoriteItem() =
      _UpdateFavoriteItem;

  /// Event to update the text content prepared for sharing.
  ///
  /// This event prepares the supplication text for sharing with others,
  /// formatting the Islamic content appropriately for social media or
  /// messaging platforms.
  ///
  /// Parameters:
  /// - [description]: The supplication text to prepare for sharing
  const factory HisnAlMuslimDetailsEvent.updateTextToShare({
    required String description,
  }) = _UpdateTextToShare;

  /// Event to share the Islamic supplication with others.
  ///
  /// This event triggers the sharing of the Hisn Al-Muslim supplication
  /// through available sharing platforms, enabling Muslims to spread
  /// beneficial Islamic knowledge and prayers.
  ///
  /// Parameters:
  /// - [title]: The title of the supplication being shared
  const factory HisnAlMuslimDetailsEvent.shareItem({
    required String title,
  }) = _ShareItem;
}
