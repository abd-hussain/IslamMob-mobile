import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/user_contacts.dart';
import 'package:islam_app/domain/usecase/fetch_user_contacts_usecase.dart';
import 'package:islam_app/domain/usecase/send_sms_messages_usecase.dart';

part 'contacts_bloc.freezed.dart';
part 'contacts_event.dart';
part 'contacts_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc() : super(const ContactsState()) {
    on<_FetchContacts>(_fetchContacts);
    on<_UpdateSelectedContact>(_updateSelectedContact);
    on<_ShareItem>(_shareItem);
  }

  FutureOr<void> _fetchContacts(
      _FetchContacts event, Emitter<ContactsState> emit) async {
    final bool station = await FetchUserContactsUsecase.requestPermission();

    if (station == false) {
      emit(state.copyWith(
          station: const ContactsProgressStateErrorPermission()));
    } else {
      final List<UserContacts> listOfContacts =
          await FetchUserContactsUsecase.call();
      emit(state.copyWith(
          station: const ContactsProgressStateSuccess(),
          listOfContacts: listOfContacts));
    }
  }

  FutureOr<void> _updateSelectedContact(
      _UpdateSelectedContact event, Emitter<ContactsState> emit) {
    final updatedListOfContacts = state.listOfContacts.map((item) {
      if (item.fullName == event.contact.fullName &&
          item.mobileNumber == event.contact.mobileNumber) {
        return item.copyWith(selected: !item.selected);
      }
      return item;
    }).toList();

    emit(state.copyWith(
        station: const ContactsProgressStateSuccess(),
        listOfContacts: updatedListOfContacts));
  }

  FutureOr<void> _shareItem(
      _ShareItem event, Emitter<ContactsState> emit) async {
    final mobileNumbers = state.listOfContacts
        .where((item) => item.selected)
        .map((item) => item.mobileNumber)
        .toList();

    if (mobileNumbers.isNotEmpty) {
      await SendSmsMessagesUsecase.sendBulkSMS(
          mobileNumbers: mobileNumbers, message: event.message);
    }
  }
}
