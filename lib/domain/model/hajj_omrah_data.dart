import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

part 'hajj_omrah_data.freezed.dart';

@freezed
class HajjOmrahData with _$HajjOmrahData {
  factory HajjOmrahData({
    required int id,
    required MultiLanguageString title,
    required String mainImagePath,
    required Map<String, List<String>> details,
  }) = _HajjOmrahData;
}
