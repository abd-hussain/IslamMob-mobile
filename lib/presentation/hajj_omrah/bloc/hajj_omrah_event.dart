part of 'hajj_omrah_bloc.dart';

/// Events for the Hajj and Omrah BLoC.
///
/// This sealed class defines all possible events for managing Hajj and Omrah
/// guidance functionality, which provides Muslims with essential information
/// for performing these sacred Islamic pilgrimages. These events handle:
/// - **Content initialization** for Hajj or Omrah guidance
/// - **Video loading states** for educational content management
///
/// The events support Muslims in learning about and preparing for Hajj
/// (the major pilgrimage) and Omrah (the minor pilgrimage), which are
/// among the most important religious obligations and spiritual journeys
/// in Islam, providing guidance according to Islamic teachings and Sunnah.
@freezed
class HajjOmrahEvent with _$HajjOmrahEvent {
  /// Event to initialize Hajj or Omrah content based on screen type.
  ///
  /// This event loads the appropriate guidance content for either Hajj
  /// or Omrah pilgrimage, providing Muslims with the specific information
  /// and instructions needed for their chosen pilgrimage type.
  ///
  /// Parameters:
  /// - [screenType]: The type of pilgrimage screen (Hajj or Omrah)
  const factory HajjOmrahEvent.fillInitialValue(
      HajjOmrahScreenType screenType) = _FillInitialValue;

  /// Event to update video loading state for pilgrimage educational content.
  ///
  /// This event manages the loading state of video content that provides
  /// visual guidance for Hajj and Omrah rituals, helping Muslims understand
  /// the proper procedures and spiritual significance of pilgrimage activities.
  ///
  /// Parameters:
  /// - [state]: The current video processing state (loading, success, error)
  const factory HajjOmrahEvent.loadingState(
    VideoProcessState state,
  ) = _LoadingState;
}
