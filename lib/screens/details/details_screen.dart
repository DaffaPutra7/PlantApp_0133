import 'package:flutter/material.dart';
import 'package:plantapp_133/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetails(),
    );
  }
}