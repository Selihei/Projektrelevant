import 'package:flutter/material.dart';
import 'package:flutterscreens/theme/app_colors.dart';
import 'package:flutterscreens/theme/app_icons.dart';

class SettingsButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SettingsButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(AppIcons.settings, color: AppColors.settingsButIc,),
      onPressed: () {},
    );
  }
}