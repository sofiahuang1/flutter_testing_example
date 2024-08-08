import 'package:flutter/material.dart';
import 'package:flutter_testing_example/presentation/home/widget/custom_appbar.dart';
import 'package:flutter_testing_example/presentation/home/widget/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'My Testing App'),
      body: HomeBody(),
    );
  }
}
