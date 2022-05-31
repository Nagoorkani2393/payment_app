import 'package:flutter/material.dart';
import 'package:payment_app/pages/home_page.dart';
import 'package:payment_app/pages/settings_page.dart';
import 'constants/app_colors/app_colors.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: _pages().elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: AppColors.accentColor,
          currentIndex: _selectedIndex,
          backgroundColor: AppColors.secondaryColor,
          onTap: (int value){
            setState((){
              _selectedIndex = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],

        ),
      ),
    );
  }

  List<Widget> _pages(){
    return [const HomePage(), const SettingsPage()];
  }
}



