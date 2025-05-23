import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp_133/components/my_bottom_navbar.dart';
// import 'package:plantapp_133/constants.dart';
import 'package:plantapp_133/screens/home/components/body.dart';

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
        icon: SvgPicture.asset("assets/icons/menu.svg", color: Colors.white,)
      ),
    );
  }
}