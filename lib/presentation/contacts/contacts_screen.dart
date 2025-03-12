import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/domain/usecase/sink_user_contacts_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/contacts/bloc/contacts_bloc.dart';
import 'package:islam_app/presentation/contacts/widgets/contact_item_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  void initState() {
    super.initState();
    FirebaseAnalyticsRepository.logEvent(name: "ContactsScreen");
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ContactsBloc()..add(const ContactsEvent.fetchContacts()),
      child: BlocBuilder<ContactsBloc, ContactsState>(
        buildWhen: (previous, current) => previous.station != current.station,
        builder: _buildScaffold,
      ),
    );
  }

  /// Builds the main Scaffold widget
  Widget _buildScaffold(BuildContext context, ContactsState state) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2E9),
      appBar: CustomAppBar(
        title: IslamMobLocalizations.of(context).invite_friends,
        actions: [
          _buildShareButton(context),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: switch (state.station) {
              ContactsProgressStateIdl() => const Center(
                  child: CircularProgressIndicator(color: Color(0xff008480)),
                ),
              ContactsProgressStateErrorPermission() => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        title: IslamMobLocalizations.of(context)
                            .no_permission_for_contact,
                        fontSize: 18,
                        color: const Color(0xff292929),
                        textAlign: TextAlign.center,
                      ),
                      CustomButton(
                        isEnabled: true,
                        padding:
                            const EdgeInsets.only(top: 16, left: 16, right: 16),
                        title: IslamMobLocalizations.of(context)
                            .noContactsPermissionButton,
                        onTap: () async =>
                            OpenMobileSettingUseCase.openAppSettings(),
                      ),
                    ],
                  ),
                ),
              ContactsProgressStateSuccess() => _buildListView(),
            }),
            const AddMobBanner(
              size: AdsBannerSize.fullBanner,
              verticalPadding: 0,
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the ListView for displaying contacts
  Widget _buildListView() {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        if (state.listOfContacts.isEmpty) {
          return Center(
            child: CustomText(
              title: IslamMobLocalizations.of(context).no_contacts_to_show,
              fontSize: 18,
              color: const Color(0xff444444),
            ),
          );
        } else {
          SinkUserContactsUsecase.startBackgroundContactSync();

          return Padding(
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
                itemCount: state.listOfContacts.length,
                itemBuilder: (ctx, index) {
                  return ContactItemView(contact: state.listOfContacts[index]);
                }),
          );
        }
      },
    );
  }

  /// Builds the Share button in the AppBar
  Widget _buildShareButton(BuildContext context) {
    final String message =
        "${IslamMobLocalizations.of(context).shareMessageTitle}\n${IslamMobLocalizations.of(context).shareMessageBody} \n Android : ${AppConstant.androidAppLink} \n iOS : ${AppConstant.iOSAppLink}";

    return IconButton(
      onPressed: () => context
          .read<ContactsBloc>()
          .add(ContactsEvent.shareItem(message: message)),
      icon: const Icon(Icons.ios_share_rounded),
    );
  }
}
