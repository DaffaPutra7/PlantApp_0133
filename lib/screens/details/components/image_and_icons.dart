import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp_133/constants.dart';
import 'package:plantapp_133/screens/details/components/icon_cart.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
      child: Column(
        children: <Widget> [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              onPressed: () {
                Navigator.pop(context);
              }, 
              icon: SvgPicture.asset("assets/icons/back_arrow.svg", height: 50, width: 50),
            ),
          ),
          Spacer(),
          IconCard(icon: "assets/icons/sun.svg"),
          IconCard(icon: "assets/icons/thermometer.svg"),
          IconCard(icon: "assets/icons/water-drop.svg"),
          IconCard(icon: "assets/icons/wind.svg"),
        ],
      ),
    );
  }
}