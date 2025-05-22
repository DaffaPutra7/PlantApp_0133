import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp_133/constants.dart';
import 'package:plantapp_133/screens/camera/home_page.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.30)
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          IconButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => FullPage())
              );
            }, 
            icon: SvgPicture.asset("assets/icons/camera.svg", height: 25, width: 25, color: kPrimaryColor)
          ),
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset("assets/icons/map.svg", height: 25, width: 25, color: kPrimaryColor)
          ),
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset("assets/icons/user_icon.svg", height: 25, width: 25, color: kPrimaryColor)
          ),
        ],
      ),
    );
  }
}