import 'package:flutter/material.dart';
import 'package:plantapp_133/constants.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:plantapp_133/constants.dart';
// import 'package:plantapp_133/screens/details/components/icon_cart.dart';
import 'package:plantapp_133/screens/details/components/image_and_icons.dart';
import 'package:plantapp_133/screens/details/components/title_and_price.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget> [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20)
                      )
                    )
                  ),
                  onPressed: () {}, 
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ),
              ),
              Expanded(
                child: TextButton(
                  
                  onPressed: () {}, 
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16
                    ),
                  )
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}