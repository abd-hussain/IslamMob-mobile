import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class LoginHeader extends StatelessWidget {
  final void Function() onPress;
  const LoginHeader({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xff292929),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.photo_camera_front_outlined,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              CustomText(
                title: IslamMobLocalizations.of(context).login,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
