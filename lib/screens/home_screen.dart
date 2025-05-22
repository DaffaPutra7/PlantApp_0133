import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp_133/constants.dart';
import 'package:plantapp_133/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {}, 
        icon: SvgPicture.asset("assets/icons/menu.svg")
      ),
    );
  }
}

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
            onPressed: () {}, 
            icon: SvgPicture.asset("assets/icons/flower.svg", height: 25, width: 25)
          ),
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset("assets/icons/heart_icon.svg", height: 25, width: 25)
          ),
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset("assets/icons/user_icon.svg", height: 25, width: 25)
          ),
        ],
      ),
    );
  }
}