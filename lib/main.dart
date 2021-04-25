import 'package:PostureApp/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:PostureApp/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'models/DataExercise.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Posture App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: warnaBack,
        textTheme: Theme.of(context).textTheme.apply(displayColor: warnaTeks),
      ),
      home: MainTab(),
    );
  }
}

class MainTab extends StatefulWidget {
  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  bool _isDone = true;

  int _tabIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  Widget _getScreen() {
    switch (_tabIndex) {
      case 0:
        return ExerciseScreen();
      case 1:
        return HomeScreen();
      case 2:
        return DetailsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/gym.svg",
              color: _tabIndex == 0 ? warnaAktif : warnaTeks,
            ),
            label: "Excercises",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/calendar.svg",
              color: _tabIndex == 1 ? warnaAktif : warnaTeks,
            ),
            label: "Reports",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Settings.svg",
              color: _tabIndex == 2 ? warnaAktif : warnaTeks,
            ),
            label: "About",
          ),
        ],
        currentIndex: _tabIndex,
        selectedItemColor: warnaAktif,
        unselectedItemColor: warnaTeks,
        onTap: _onTabTapped,
      ),
      body: _getScreen(),
    );
  }
}
