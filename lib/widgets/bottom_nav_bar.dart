import 'package:flutter/material.dart';
import 'package:PostureApp/constants.dart';
import 'package:PostureApp/main.dart';
import 'package:PostureApp/exercise.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Exercises",
            svgScr: "assets/icons/gym.svg",
            isActive: true,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ExerciseScreen();
                }),
              );
            },
          ),
          BottomNavItem(
            title: "Reports",
            svgScr: "assets/icons/calendar.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }),
              );
            },
          ),
          BottomNavItem(
            title: "About",
            svgScr: "assets/icons/Settings.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  // return DetailsScreen();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.svgScr,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // SvgPicture.asset(
          //   svgScr,
          //   color: isActive ? warnaAktif : warnaTeks,
          // ),
          Text(
            title,
            style: TextStyle(color: isActive ? warnaAktif : warnaTeks),
          ),
        ],
      ),
    );
  }
}
