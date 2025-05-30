import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class HajjOmrahTileView extends StatelessWidget {
  final HajjOmrahData data;
  final bool isRtlLanguage;
  const HajjOmrahTileView({
    super.key,
    required this.data,
    required this.isRtlLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesConstants.hajjOmrahDetailsScreen,
          arguments: {'data': data, "isRtlLanguage": isRtlLanguage},
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(
                data.mainImagePath,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black.withValues(alpha: 0.5),
                  width: double.infinity,
                  child: CustomText(
                    title: isRtlLanguage ? data.title.ar : data.title.en,
                    textAlign: TextAlign.center,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
