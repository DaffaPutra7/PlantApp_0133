import 'package:flutter/material.dart';
import 'package:plantapp_133/constants.dart';


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