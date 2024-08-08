import 'package:flutter/material.dart';
import 'package:flutter_testing_example/presentation/home/widget/testing_type_listview.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What type of testing are we talking about?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Expanded(
            child: TestingTypeListview(),
          ),
        ],
      ),
    );
  }
}
