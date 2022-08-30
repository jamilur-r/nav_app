import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_app/screens/batch/batch_item.dart';

class StartBatch extends StatelessWidget {
  const StartBatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            child: const Text('Started'),
            onPressed: () {
              navigator!.pushReplacement(
                  MaterialPageRoute(builder: (context) => const BatchItem()));
            },
          ),
        ),
      ),
    );
  }
}
