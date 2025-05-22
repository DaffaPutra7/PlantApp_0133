import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp_133/constants.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget> [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget> [
              Expanded(
                child: Padding(
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
                      Container(
                        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 22,
                              color: kPrimaryColor.withOpacity(0.22),
                            ),
                            BoxShadow(
                              offset: Offset(-15, -15),
                              blurRadius: 20,
                              color: Colors.white
                            ),
                          ],
                        ),
                        child: SvgPicture.asset("assets/icons/sun.svg", color: kPrimaryColor,),
                      )
                    ],
                  ),
                ),
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
        )
      ],
    );
  }
}