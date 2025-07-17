import 'package:flutter/material.dart';
import 'package:flutterscreens/theme/app_colors.dart';
import 'package:flutterscreens/theme/app_icons.dart';
import 'package:flutterscreens/widgets/buttons.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const customAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(""),
      backgroundColor: AppColors.topBarColor, 
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(16.0);
}

class CustomBottomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.botBarColor,
     // child: Text("")
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(16.0);
}

Widget SettingsButtonContainer() {
  return Container(
    padding: const EdgeInsets.only(right: 16), 
    width: double.infinity,
    height: 50,
    color: AppColors.settingsCon,
    alignment: Alignment.centerRight,
    child: Container(
      width: 40,
      height: 40,
   decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.settingButback,
   ),
      child: SettingsButton(onPressed: () {})) 
  );
}