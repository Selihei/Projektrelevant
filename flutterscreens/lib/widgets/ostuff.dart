import 'package:flutter/material.dart';
import 'package:flutterscreens/theme/app_colors.dart';
import 'package:flutterscreens/theme/app_icons.dart';

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