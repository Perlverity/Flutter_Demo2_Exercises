import 'package:flutter/material.dart';


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
            title: "Today",
            iconSrc: Icons.calendar_today_rounded,
          ),
          BottomNavItem(
            title: "All Exercises",
            iconSrc: Icons.airline_seat_recline_extra_sharp,
            isActive: true,
          ),
          BottomNavItem(
            title: "Settings",
            iconSrc: Icons.settings_applications_sharp,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData iconSrc;
  final String title;
  final Function press;
  final bool isActive;

  const BottomNavItem({
    Key key,
    this.iconSrc,
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
          Icon(iconSrc, size: 30, color: isActive ? Color(0xFFE68342) : Color(0xFF222B45)),
          Text(
            title,
            style: TextStyle(color: isActive ? Color(0xFFE68342) : Color(0xFF222B45)),
          ),
        ],
      ),
    );
  }
}