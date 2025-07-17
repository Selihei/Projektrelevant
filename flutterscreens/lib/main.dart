import 'package:flutter/material.dart';
import 'package:flutterscreens/widgets/navs.dart';
import 'package:flutterscreens/widgets/buttons.dart';
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
         //   Text("Deine letzte Auswahl", ),
          ],
          
        ),
          bottomNavigationBar:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomNavigationBar(
                currentIndex: 0,
             //   onTap: (_) {}, 
              ),
           //   const CustomBottomAppBar(), // farbiger Streifen
            ],
          ),
        
      ),
    );
  }
}
