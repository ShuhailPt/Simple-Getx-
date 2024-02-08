import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';

class home extends StatelessWidget {
   home({Key? key}) : super(key: key);
  final MainControleler counterController = Get.put(MainControleler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(()=> Text(
                counterController.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
         FloatingActionButton(
          onPressed: (){
            counterController.incrementCounter();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ); // This trailing comma makes auto-formatting nicer for build methods.

  }
}
