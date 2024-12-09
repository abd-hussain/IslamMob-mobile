import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/presentation/home_tab/bloc/home_tab_bloc.dart';

class PrayManagerUsecase {
  final PrayManagerRepository prayManagerRepository;

  PrayManagerUsecase({
    required this.prayManagerRepository,
  });

  SalahTimeState call() {
    //TODO: use this
    return prayManagerRepository.getNextPrayerType();
  }
}
