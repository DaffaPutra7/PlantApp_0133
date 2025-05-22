import 'package:flutter/material.dart';
import 'package:plantapp_133/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget> [
          FeaturePlantCard(
            image: "assets/images/bottom_image1.jpg",
            press: () {},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_image2.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    required this.image,
    required this.press,
    super.key,
  });

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
          )
        ),
      ),
    );
  }
}