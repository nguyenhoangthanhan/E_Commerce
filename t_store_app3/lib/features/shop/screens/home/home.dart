import 'package:flutter/material.dart';
import 'package:t_store_app3/features/shop/screens/home/widgets/home_app_bar.dart';

import '../../../../common/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- Tutorial [Section = 3, video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  THomeAppBar(),

                  /// -- Search bar


                  /// -- Categories
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
