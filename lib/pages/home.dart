import 'package:dash_board_ui/controllers/counterController.dart';
import 'package:dash_board_ui/pages/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter :${counterController.counter.value}"),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(OtherScreen()),
                  child: Text('Open other screen'))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
