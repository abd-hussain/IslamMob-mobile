part of 'image_holder_bloc.dart';

@freezed
class ImageHolderState with _$ImageHolderState {
  const factory ImageHolderState({String? imageUrl, File? imageFile}) =
      _ImageHolderState;
}
