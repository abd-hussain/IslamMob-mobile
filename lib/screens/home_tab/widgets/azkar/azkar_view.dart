import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar/bloc/azkar_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar/widgets/zeker_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});
  //TODO handle Azkar

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarBloc(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _headerView(),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counter1 != current.counter1,
              builder: (context, state) {
                const maxCount = 3;
                if (maxCount == state.counter1) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counter1,
                  maxCount: maxCount,
                  text: 'ٱسْتَغْفِرُ ٱللَّهَ',
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(AzkarEvent.updateCounter1Status(state.counter1 + 1)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counter2 != current.counter2,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counter2) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counter2,
                  maxCount: maxCount,
                  text:
                      'ٱللَّهُمَّ أَنتَ ٱلسَّلَامُ، وَمِنكَ ٱلسَّلَامُ، تَبَارَكتَ يَا ذَا ٱلْجَلَالِ وَٱلْإِكْرَامِ، لَا إِلٰهَ إِلَّا ٱللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ ٱلْمُلْكُ وَلَهُ ٱلْحَمْدُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ، لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِٱللَّهِ، لَا إِلٰهَ إِلَّا ٱللَّهُ وَلَا نَعْبُدُ إِلَّا إِيَّاهُ، لَهُ ٱلنِّعْمَةُ وَلَهُ ٱلْفَضْلُ وَلَهُ ٱلثَّنَاءُ ٱلْحَسَنُ، لَا إِلٰهَ إِلَّا ٱللَّهُ مُخْلِصِينَ لَهُ ٱلدِّينَ وَلَوْ كَرِهَ ٱلْكَافِرُونَ، ٱللَّهُمَّ لَا مَانِعَ لِمَا أَعْطَيْتَ وَلَا مُعْطِيَ لِمَا مَنَعْتَ وَلَا يَنفَعُ ذَا ٱلْجَدِّ مِنْكَ ٱلْجَدُّ',
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(AzkarEvent.updateCounter2Status(state.counter2 + 1)),
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: BlocBuilder<AzkarBloc, AzkarState>(
                    buildWhen: (previous, current) =>
                        previous.counter3 != current.counter3,
                    builder: (context, state) {
                      const maxCount = 33;
                      if (maxCount == state.counter3) {
                        return const SizedBox.shrink();
                      }
                      return ZekerView(
                        currentCount: state.counter3,
                        maxCount: maxCount,
                        text: 'سُبْحَانَ اللَّهِ',
                        onTap: () => context.read<AzkarBloc>().add(
                            AzkarEvent.updateCounter3Status(
                                state.counter3 + 1)),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: BlocBuilder<AzkarBloc, AzkarState>(
                    buildWhen: (previous, current) =>
                        previous.counter4 != current.counter4,
                    builder: (context, state) {
                      const maxCount = 33;
                      if (maxCount == state.counter4) {
                        return const SizedBox.shrink();
                      }
                      return ZekerView(
                        currentCount: state.counter4,
                        maxCount: maxCount,
                        text: 'ٱلْحَمْدُ لِلَّهِ',
                        onTap: () => context.read<AzkarBloc>().add(
                            AzkarEvent.updateCounter4Status(
                                state.counter4 + 1)),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: BlocBuilder<AzkarBloc, AzkarState>(
                    buildWhen: (previous, current) =>
                        previous.counter5 != current.counter5,
                    builder: (context, state) {
                      const maxCount = 33;
                      if (maxCount == state.counter5) {
                        return const SizedBox.shrink();
                      }
                      return ZekerView(
                        currentCount: state.counter5,
                        maxCount: maxCount,
                        text: 'ٱللَّهُ أَكْبَرُ',
                        onTap: () => context.read<AzkarBloc>().add(
                            AzkarEvent.updateCounter5Status(
                                state.counter5 + 1)),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counter6 != current.counter6,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counter6) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counter6,
                  maxCount: maxCount,
                  text:
                      'لَا إِلٰهَ إِلَّا ٱللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ ٱلْمُلْكُ وَلَهُ ٱلْحَمْدُ وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ',
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(AzkarEvent.updateCounter6Status(state.counter6 + 1)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counter7 != current.counter7,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counter7) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counter7,
                  maxCount: maxCount,
                  text:
                      'لَا إِلٰهَ إِلَّا ٱللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ ٱلْمُلْكُ وَلَهُ ٱلْحَمْدُ، يُحْيِي وَيُمِيتُ، وَهُوَ عَلَىٰ كُلِّ شَيْءٍ قَدِيرٌ',
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(AzkarEvent.updateCounter7Status(state.counter7 + 1)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counter8 != current.counter8,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counter8) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counter8,
                  maxCount: maxCount,
                  text:
                      ' اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(AzkarEvent.updateCounter8Status(state.counter8 + 1)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counter9 != current.counter9,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counter9) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counter9,
                  maxCount: maxCount,
                  title: "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",
                  text:
                      'قُلۡ هُوَ ٱللَّهُ أَحَدٌ * ٱللَّهُ ٱلصَّمَدُ * لَمۡ يَلِدۡ وَلَمۡ يُولَدۡ * وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ',
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(AzkarEvent.updateCounter9Status(state.counter9 + 1)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counter10 != current.counter10,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counter10) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counter10,
                  maxCount: maxCount,
                  title: "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",
                  text:
                      'قُلۡ أَعُوذُ بِرَبِّ ٱلۡفَلَقِ * مِن شَرِّ مَا خَلَقَ * وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِي ٱلۡعُقَدِ * وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ',
                  onTap: () => context.read<AzkarBloc>().add(
                      AzkarEvent.updateCounter10Status(state.counter10 + 1)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counter11 != current.counter11,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counter11) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counter11,
                  maxCount: maxCount,
                  title: "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",
                  text:
                      'قُلۡ أَعُوذُ بِرَبِّ ٱلنَّاسِ * مَلِكِ ٱلنَّاسِ * إِلَٰهِ ٱلنَّاسِ * مِن شَرِّ ٱلۡوَسۡوَاسِ ٱلۡخَنَّاسِ * ٱلَّذِي يُوَسۡوِسُ فِي صُدُورِ ٱلنَّاسِ * مِنَ ٱلۡجِنَّةِ وَٱلنَّاسِ',
                  onTap: () => context.read<AzkarBloc>().add(
                      AzkarEvent.updateCounter11Status(state.counter11 + 1)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerView() {
    return Row(
      children: [
        Image.asset(
          "assets/images/azkar.png",
          scale: 10,
        ),
        const SizedBox(width: 4),
        const CustomText(
          title: "Azkar After Salah", //TODO
          fontSize: 18,
          color: Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
