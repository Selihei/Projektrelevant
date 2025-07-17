import 'package:flutterscreens/theme/app_colors.dart';
import 'package:flutterscreens/theme/app_icons.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
 // final Function(int) onTap;

  const CustomNavigationBar({
    super.key,
     this.currentIndex = 0,
  //  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Höhe der Navigation Bar anpassen, z.B. 60
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.navbuttstart,
            AppColors.navbuttend,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
 //       onTap: onTap,
       backgroundColor: Colors.transparent,  
       // elevation: 0, // Optional: Schatten entfernen, damit es cleaner aussieht
       // selectedItemColor: Colors.white,
      //  unselectedItemColor: Colors.white70,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(AppIcons.lists),
            label: "Listen",
          ),
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
           child: const Icon(AppIcons.start, size: 40, color: AppColors.navColor,),
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(AppIcons.profile),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
