import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
        centerTitle: true,
      ),
      body: Container(
        color: context.surfaceColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Hello 1'),
            Text('Hello 2'),
            Text('Hello 3'),
            Text('Hello 4'),
            Text('Hello 5'),
          ],
        ),
      ),
    );
  }
}
