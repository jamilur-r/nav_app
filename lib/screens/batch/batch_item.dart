import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_app/screens/batch/start_batch.dart';

class BatchItem extends StatelessWidget {
  const BatchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            child: const Text('Start Batch'),
            onPressed: () {
              navigator!.pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const StartBatch(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
