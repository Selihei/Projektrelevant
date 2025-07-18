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

Widget LastChoiceContainer() {
  return Container(
    //padding: const EdgeInsets.only(right: 16), 
   
    height: 230,
    width: 330,
    color: AppColors.gameTheme,
   // alignment: Alignment.centerRight,
    child: Column(
   //   mainAxisAlignment: MainAxisAlignment.center,
      children: [
Container(
  padding: EdgeInsets.all(10),
  child: Image.asset("assets/images/farcry5_616x353.jpg")
),
SizedBox(height: 8),
Container(
  width: double.infinity,
  //alignment: Alignment.topLeft,
  padding: EdgeInsets.only(left:12),
  child: 
  Text("Far Cry 5", style: TextStyle(
    fontWeight: FontWeight.w500, 
    fontSize: 12, color: Colors.white),),
)
      ],
    ),
    ); 
}

Widget PillLastContainer(String labelText) {
  return Container(
    height: 45,
    width: 300,
    padding: EdgeInsets.only(left: 10, right: 10),
decoration: BoxDecoration(
  color: AppColors.gameTheme,
  borderRadius: BorderRadius.circular(16)
),
    child: Row(
      children: [
Text(labelText, style: TextStyle(color: Colors.white),),
Spacer(),
Icon(AppIcons.information, color: Colors.white,)
      ],
    )
    );
}




Widget navButtonContainer(IconData icon, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
  Container(
      width: double.infinity,
   // height: 63,
  //    decoration: BoxDecoration(
      //  color: Colors.transparent,
  //  border: Border(
   //  right: BorderSide(color: AppColors.botBarColor, width:0),
   ////   top: BorderSide(color: AppColors.botBarColor, width: 1),
   //   bottom: BorderSide(color: Colors.black, width: 1),
     // color: AppColors.botBarColor,
 //  width: 1.0
 //   ),
  //    ),
    //padding: const EdgeInsets.only(top: 16), 
 
  //  color: AppColors.settingsCon,
 //  alignment: Alignment.center,
 
    child: Column(
    //  mainAxisAlignment: MainAxisAlignment.center,
    //  crossAxisAlignment: CrossAxisAlignment.center,
      children: [
Icon(icon, color: Colors.white,size: 36,),
//SizedBox(height:4),
Text(text, style: TextStyle(color: Colors.white),)
      ],
    )
  )
        ],
  );
}