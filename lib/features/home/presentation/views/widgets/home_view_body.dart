import 'package:booklyapp/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomizeAppBar()],
    );
  }
}
