import 'package:flutter/material.dart';
import 'package:flutterscreens/theme/app_colors.dart';
import 'package:flutterscreens/widgets/navs.dart';
//import 'package:flutterscreens/widgets/buttons.dart';
import 'package:flutterscreens/widgets/ostuff.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: customAppBar(title: "",),
        
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SettingsButtonContainer(),
            SizedBox(width: double.infinity, height: 24),
             Container(
              alignment: Alignment.centerLeft,
               padding: const EdgeInsets.only(left: 40),
               child: const Text(
                 'Deine letzte Auswahl:',
                 style: TextStyle(
                   fontWeight: FontWeight.w900,
                   fontSize: 16,
                 ),
               ),
             ),
             SizedBox(height: 8,),
             LastChoiceContainer(),
             SizedBox(height: 70),
             Text("Letzte Auswahlmöglichkeiten:",
              style: TextStyle(
                   fontWeight: FontWeight.w900,
                   fontSize: 16,
                 ),
                 ),
                 SizedBox(height: 30,),
       PillLastContainer("Far Cry 3"),
SizedBox(height: 20),
PillLastContainer("Crysis Remastered"),
SizedBox(height: 20),
PillLastContainer("Hollow Knight"),
SizedBox(height: 20),
PillLastContainer("WatchDogs")
          ],
          
        ),
        bottomNavigationBar: TestnavigationBar(),


         // bottomNavigationBar:
        //  Column(
         //   mainAxisSize: MainAxisSize.min,
          //  children: [
            //  CustomNavigationBar(
             //   currentIndex: 0,
             //   onTap: (_) {}, 
            //  ),
           //   const CustomBottomAppBar(), // farbiger Streifen
           // ],
         // ),
        
      ),
    );
  }
}
