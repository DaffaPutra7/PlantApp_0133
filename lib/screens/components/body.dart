import 'package:flutter/material.dart';
import 'package:plantapp_133/constants.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:plantapp_133/constants.dart';
import 'package:plantapp_133/screens/components/header_with_seacrhbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // Memberi tinggi dan lebar dari total layar
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      // Agar bisa scroll
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            TitleWithMoreButton(
              title: "Recommended",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    required this.title,
    required this.press,
    super.key,
  });

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TextWithCustomUnderline(text: title),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: press,
            child: Text(
              "More", 
              style: TextStyle(color: Colors.white)
            ),
          ),
        ],
      ),
    );
  }
}

class TextWithCustomUnderline extends StatelessWidget {
  const TextWithCustomUnderline({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
