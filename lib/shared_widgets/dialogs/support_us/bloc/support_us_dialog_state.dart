part of 'support_us_dialog_bloc.dart';

/// Represents the state of the Support Us dialog.
///
/// This state class manages the data and UI state for the support dialog,
/// which allows users to support the application through various means
/// such as watching rewarded advertisements.
@freezed
abstract class SupportUsDialogState with _$SupportUsDialogState {
  /// Creates a [SupportUsDialogState] with the specified parameters.
  ///
  /// The [rewardedAdExsist] parameter indicates whether a rewarded advertisement
  /// is available for the user to watch as a way to support the application.
  /// Defaults to `false` if not specified.
  const factory SupportUsDialogState({@Default(false) bool rewardedAdExsist}) =
      _SupportUsDialogState;
}
