part of 'hajj_omrah_bloc.dart';

/// State for the Hajj and Omrah BLoC.
///
/// This immutable state class manages the state of the Hajj and Omrah
/// guidance interface, which provides Muslims with essential information
/// for performing these sacred Islamic pilgrimages. The state tracks:
/// - **Pilgrimage content list** with guidance, rituals, and instructions
/// - **Language direction** for proper Arabic and RTL text display
/// - **Video processing state** for educational content loading
///
/// The state enables Muslims to access authentic Hajj and Omrah guidance
/// with proper formatting and multimedia support, helping them prepare
/// for and perform these fundamental Islamic religious obligations
/// according to Sunnah and Islamic teachings.
@freezed
abstract class HajjOmrahState with _$HajjOmrahState {
  /// Creates a [HajjOmrahState] with pilgrimage content and processing status.
  ///
  /// Parameters:
  /// - [listOfItems]: List of Hajj/Omrah guidance data including rituals,
  ///   instructions, and spiritual guidance. Defaults to an empty list.
  ///   Each item contains essential information for pilgrimage performance.
  /// - [isRtlLanguage]: Boolean indicating if the current language requires
  ///   right-to-left text direction (Arabic, Farsi). Defaults to false.
  ///   When true, ensures proper display of Arabic pilgrimage content.
  /// - [processState]: Current state of video content processing for
  ///   educational materials. Defaults to loading state.
  ///
  /// The state provides comprehensive information for displaying Hajj and
  /// Omrah guidance with proper Islamic authenticity and multimedia support.
  const factory HajjOmrahState({
    @Default([]) List<HajjOmrahData> listOfItems,
    @Default(false) bool isRtlLanguage,
    @Default(VideoProcessState.loading()) VideoProcessState processState,
  }) = _HajjOmrahState;
}

/// Sealed class representing video processing states for pilgrimage content.
///
/// This sealed class defines the possible states during video content
/// loading and processing for Hajj and Omrah educational materials,
/// providing clear state management for multimedia pilgrimage guidance.
@freezed
sealed class VideoProcessState with _$VideoProcessState {
  /// Loading state for video content processing.
  const factory VideoProcessState.loading() = _Loading;

  /// Success state indicating video content is ready for display.
  const factory VideoProcessState.success() = _Success;

  /// Error state indicating video content loading failed.
  const factory VideoProcessState.error() = _Error;
}

/// Sealed class representing the type of pilgrimage screen.
///
/// This sealed class defines the different types of Islamic pilgrimage
/// screens available in the application, distinguishing between the
/// major pilgrimage (Hajj) and minor pilgrimage (Omrah).
@freezed
sealed class HajjOmrahScreenType with _$HajjOmrahScreenType {
  /// Hajj pilgrimage type - the major Islamic pilgrimage.
  const factory HajjOmrahScreenType.hajj() = _Hajj;

  /// Omrah pilgrimage type - the minor Islamic pilgrimage.
  const factory HajjOmrahScreenType.omrah() = _Omrah;
}
