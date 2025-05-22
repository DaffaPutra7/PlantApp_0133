import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp_133/constants.dart';
// import 'package:plantapp_133/screens/details/components/icon_cart.dart';
import 'package:plantapp_133/screens/details/components/image_and_icons.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          ImageAndIcons(size: size)
        ],
      ),
    );
  }
}