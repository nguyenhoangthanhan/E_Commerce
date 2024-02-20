import 'package:flutter/material.dart';
import 'package:t_store_app3/common/custom_shapes/curved_edges/curved_edges.dart';
import 'package:t_store_app3/utils/constants/colors.dart';

import '../../../../common/custom_shapes/containers/circular_container.dart';
import '../../../../common/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/custom_shapes/curved_edges/curved_edges_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Container(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- Tutorial [Section = 3, video #2]
            TPrimaryHeaderContainer(
              child: Container(

              ),
            )
          ],
        ),
      ),
    );
  }
}
