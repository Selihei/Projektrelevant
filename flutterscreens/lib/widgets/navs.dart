import 'package:flutterscreens/theme/app_colors.dart';
import 'package:flutterscreens/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutterscreens/widgets/ostuff.dart';

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
      // Höhe der Navigation Bar anpassen 60
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
       // elevation: 0, 
       // selectedItemColor: Colors.white,
      //  unselectedItemColor: Colors.white70,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(AppIcons.ownlists, color: AppColors.navColor ,),
            label: "Listsdagsgden",
          ),
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
           child: const Icon(AppIcons.start, size: 40, color: AppColors.navColor,),
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(AppIcons.profile, color: AppColors.navColor,),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}




class TestnavigationBar extends StatelessWidget {
  final int currentIndex;
 // final Function(int) onTap;

  const TestnavigationBar({
    super.key,
     this.currentIndex = 0,
  //  required this.onTap,
  });

  @override
  Widget build(BuildContext context) { 
     return Container(
      decoration: BoxDecoration(
    gradient: LinearGradient(
          colors: [
            AppColors.navbuttstart,
            AppColors.navbuttend,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
    )
  ),
       child: NavigationBar(
      backgroundColor: Colors.transparent,
      indicatorColor: Colors.transparent,
  //    surfaceTintColor: Colors.transparent,
     // overlayColor: Colors.transparent,
          onDestinationSelected: (int index) { },
         //      indicatorColor: Colors.amber,
       //   selectedIndex: currentPageIndex,
          destinations:  <Widget>[
            NavigationDestination(
             // selectedIcon: Icon(Icons.home),
              icon: navButtonContainer(AppIcons.ownlists, "Listen"),//Icon(Icons.home_outlined),
              label: '',
            ),
            NavigationDestination(
              icon: navButtonContainer(AppIcons.start, "hi"), //Badge(child: Icon(Icons.notifications_sharp)),
              label: '',
            ),
            NavigationDestination(
              icon: navButtonContainer(AppIcons.profile, "Profil"),//Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
              label: '',
            ),
          ]
        ),
     )
    ;
  }
}

