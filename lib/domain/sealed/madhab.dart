import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/madhab.freezed.dart';

/// A sealed class representing different Islamic schools of jurisprudence (Madhabs).
///
/// This sealed class defines the major Islamic schools of jurisprudence that
/// affect prayer time calculations, particularly for the Asr prayer:
///
/// - **Hanafi**: The Hanafi school uses a later time for Asr prayer calculation.
///   According to this school, Asr time begins when the shadow of an object
///   becomes twice its length plus the original shadow length.
///
/// - **Shafi'i**: The Shafi'i school (along with Maliki and Hanbali schools)
///   uses an earlier time for Asr prayer. According to this school, Asr time
///   begins when the shadow of an object equals its length plus the original shadow.
///
/// The Madhab selection is crucial for accurate prayer time calculations as
/// different schools have varying interpretations of when the Asr prayer time
/// begins based on shadow length calculations. This affects the daily prayer
/// schedule for practicing Muslims who follow specific jurisprudential traditions.
@freezed
sealed class MadhabState with _$MadhabState {
  const factory MadhabState.hanafi() = MadhabStateHanafi;
  const factory MadhabState.shafi() = MadhabStateShafi;
}
