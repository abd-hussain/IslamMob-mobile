part of 'quran_kareem_bloc.dart';
//TODO: This tree need to be refactored

@freezed
class QuranKareemEvent with _$QuranKareemEvent {
  factory QuranKareemEvent.showHideHelpBar(bool status) = _ShowHideHelpBar;
  factory QuranKareemEvent.updatePageCount(int pageCount) = _UpdatePageCount;
  factory QuranKareemEvent.updateSidePage(PageSide side) = _UpdateSidePage;
  factory QuranKareemEvent.updateBookMarkedPages(List<int> list) =
      _UpdateBookMarkedPages;
  factory QuranKareemEvent.updateScreenBrigtness(double value) =
      _UpdateScreenBrigtness;
  factory QuranKareemEvent.updateRewardedAd(RewardedAd? value) =
      _UpdateRewardedAd;
  factory QuranKareemEvent.updateReadPDFFile(String value) = _UpdateReadPDFFile;
  factory QuranKareemEvent.updateSorahName(String value) = _UpdateSorahName;
  factory QuranKareemEvent.updateJozo2Name(String value) = _UpdateJozo2Name;
}
