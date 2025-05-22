import 'package:flutter/material.dart';
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
          ],
        ),
      )
    );
  }
}