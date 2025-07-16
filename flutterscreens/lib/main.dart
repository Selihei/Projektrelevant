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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const customAppBar(title: "",),
        
        body: Center(
          child: Text('Hello Wrd!'),
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
