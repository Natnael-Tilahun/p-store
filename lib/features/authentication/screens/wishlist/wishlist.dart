import 'package:flutter/material.dart';
import 'package:p_store/utils/constants/sizes.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Text("Wishlist"),
      ),
    );
  }
}
