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
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          )
        ],
      ),
    );
  }
}

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    required this.title,
    required this.country,
    required this.price,
    super.key,
  });

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget> [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title\n",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: kTextColor, 
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              Text(
                country,
                style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w300
                ),
              ),
            ],
          ), 
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .titleLarge?.copyWith(color: kPrimaryColor),
          ) 
        ],
      ),
    );
  }
}