import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed/profile_options.freezed.dart';

@freezed
class ProfileOptions with _$ProfileOptions {
  factory ProfileOptions({
    required IconData icon,
    required String name,
    @Default('') String subtitle,
    @Default(true) bool avaliable,
    required VoidCallback onTap,
  }) = _ProfileOptions;
}
