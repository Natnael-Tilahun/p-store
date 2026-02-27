import 'package:flutter/material.dart';
import 'package:p_store/common/widgets/custom_shapes/containers/t_primary_header_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [TPrimaryHeaderContainer(child: Container())]),
      ),
    );
  }
}
