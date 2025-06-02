import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

part 'estekara_data.freezed.dart';

@freezed
class EstekaraData with _$EstekaraData {
  factory EstekaraData({
    required int id,
    required MultiLanguageString title,
    required Map<String, List<String>> details,
  }) = _EstekaraData;
}
