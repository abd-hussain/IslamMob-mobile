import 'package:flutter/material.dart';

class ProfileOptions {
  final IconData icon;
  final String name;
  final String subtitle;
  final bool avaliable;
  final VoidCallback onTap;
  ProfileOptions({
    required this.icon,
    required this.name,
    this.subtitle = "",
    this.avaliable = true,
    required this.onTap,
  });
}
