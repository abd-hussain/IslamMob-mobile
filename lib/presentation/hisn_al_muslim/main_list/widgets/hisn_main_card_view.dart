import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';

class HisnMainCardView extends StatelessWidget {
  final HisnAlMuslimModel item;
  const HisnMainCardView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: const Color(0xff444444),
        child: InkWell(
          onTap: () async {
            await FirebaseAnalyticsRepository.logEvent(
                name: "hisnAlMuslimDetailsScreenFromListScreen");
            await Navigator.of(context).pushNamed(
                RoutesConstants.hisnAlMuslimDetailsScreen,
                arguments: item);
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Text(
                  item.title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: const Color(0xfffff2e9),
                        fontFamily: 'Uthman',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
