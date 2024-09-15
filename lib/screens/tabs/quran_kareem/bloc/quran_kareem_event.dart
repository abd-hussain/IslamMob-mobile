part of 'quran_kareem_bloc.dart';

@freezed
class QuranKareemEvent with _$QuranKareemEvent {
  factory QuranKareemEvent.showHideHelpBar(bool status) = _ShowHideHelpBar;
  factory QuranKareemEvent.updatePageCount(int pageCount) = _UpdatePageCount;
  factory QuranKareemEvent.updateSorahName(String name) = _UpdateSorahName;
  factory QuranKareemEvent.updateJozo2Name(String name) = _UpdateJozo2Name;
  factory QuranKareemEvent.updateHezebNumber(double number) = _UpdateHezebNumber;
  factory QuranKareemEvent.updateSidePage(PageSide side) = _UpdateSidePage;
}
