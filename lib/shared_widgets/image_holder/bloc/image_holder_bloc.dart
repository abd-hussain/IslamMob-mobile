import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_holder_bloc.freezed.dart';
part 'image_holder_event.dart';
part 'image_holder_state.dart';

class ImageHolderBloc extends Bloc<ImageHolderEvent, ImageHolderState> {
  ImageHolderBloc() : super(const ImageHolderState()) {
    on<_OnInitialImage>(_onInitialImage);
    on<_OnUpdateImage>(_onUpdateImage);
    on<_OnRemoveImage>(_onRemoveImage);
  }

  FutureOr<void> _onInitialImage(
    _OnInitialImage event,
    Emitter<ImageHolderState> emit,
  ) {
    emit(
      state.copyWith(imageUrl: event.imageUrl, imageFile: event.initialFile),
    );
  }

  FutureOr<void> _onUpdateImage(
    _OnUpdateImage event,
    Emitter<ImageHolderState> emit,
  ) {
    emit(state.copyWith(imageFile: event.image));
  }

  FutureOr<void> _onRemoveImage(
    _OnRemoveImage event,
    Emitter<ImageHolderState> emit,
  ) {
    emit(state.copyWith(imageFile: null, imageUrl: null));
  }
}
