import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_mob_adhan/adhan.dart';

class NotifyAdhanNotificationUsecase {
  PrayUsecase _prayUsecase = PrayUsecase();

  List<PrayTimingDateTimeModel> getPrayTimingForSpesificDates({required List<DateTime> listOfDates}) {
    final List<PrayTimingDateTimeModel> prayTimingDateTimeModels = [];

    for (final date in listOfDates) {
      _prayUsecase = PrayUsecase(specificDate: DateComponents(date.year, date.month, date.day));
      final PrayTimingDateTimeModel prayTimingDateTimeModel = _prayUsecase.getAllPrayTimeAsDateTimeForToday();

      final fajirPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.fajir.hour,
        prayTimingDateTimeModel.fajir.minute,
        prayTimingDateTimeModel.fajir.second,
      );

      final sunrisePrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.sunrise.hour,
        prayTimingDateTimeModel.sunrise.minute,
      );

      final dhuhrPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.dhuhr.hour,
        prayTimingDateTimeModel.dhuhr.minute,
      );

      final asrPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.asr.hour,
        prayTimingDateTimeModel.asr.minute,
      );

      final maghribPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.maghrib.hour,
        prayTimingDateTimeModel.maghrib.minute,
      );

      final ishaPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.isha.hour,
        prayTimingDateTimeModel.isha.minute,
      );

      final middleOfTheNightPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.middleOfTheNight.hour,
        prayTimingDateTimeModel.middleOfTheNight.minute,
      );

      final lastThirdOfTheNightPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.lastThirdOfTheNight.hour,
        prayTimingDateTimeModel.lastThirdOfTheNight.minute,
      );

      prayTimingDateTimeModels.add(
        PrayTimingDateTimeModel(
          fajir: fajirPrayTime,
          sunrise: sunrisePrayTime,
          dhuhr: dhuhrPrayTime,
          asr: asrPrayTime,
          maghrib: maghribPrayTime,
          isha: ishaPrayTime,
          middleOfTheNight: middleOfTheNightPrayTime,
          lastThirdOfTheNight: lastThirdOfTheNightPrayTime,
        ),
      );
    }

    return prayTimingDateTimeModels;
  }
}
