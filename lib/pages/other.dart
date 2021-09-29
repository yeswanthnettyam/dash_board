import 'package:dash_board_ui/controllers/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Screen was clicked ${_counterController.counter.value} times'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () => Get.back(), child: Text('Go back'))
          ],
        ),
      ),
    );
  }
}
