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
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
            child: SizedBox(
              height: size.height * 0.8,
              child: Row(
                children: <Widget> [
                  Expanded(
                    child: ImageAndIcons(),
                  ),
                  Container(
                    height: size.height * 0.8,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63)
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.30)
                        )
                      ],
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/image.jpg") 
                      )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}