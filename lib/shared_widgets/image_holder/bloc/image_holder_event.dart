part of 'image_holder_bloc.dart';

@freezed
class ImageHolderEvent with _$ImageHolderEvent {
  const factory ImageHolderEvent.initialImage(
    File? initialFile,
    String? imageUrl,
  ) = _OnInitialImage;
  const factory ImageHolderEvent.onRemoveImage() = _OnRemoveImage;
  const factory ImageHolderEvent.onUpdateImage(File? image) = _OnUpdateImage;
}
