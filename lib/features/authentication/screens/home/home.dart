import 'package:flutter/material.dart';
import 'package:p_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:p_store/features/authentication/screens/home/widgets/home_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  THomeAppbar(),

                  /// Searchbar
                  /// Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
