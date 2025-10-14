part of 'image_holder_bloc.dart';

@freezed
abstract class ImageHolderState with _$ImageHolderState {
  const factory ImageHolderState({String? imageUrl, File? imageFile}) =
      _ImageHolderState;
}
