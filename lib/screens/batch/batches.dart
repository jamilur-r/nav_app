import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nav_app/screens/batch/batch_item.dart';

class Batches extends StatelessWidget {
  const Batches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            navigator!.pushReplacement(
              MaterialPageRoute(builder: (context) => const BatchItem()),
            );
          },
          child: const Text(
            'Batches',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
