import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_learn/pages/model.dart';
import 'package:get_learn/pages/view_model.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    StateController stateController = Get.put(StateController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      stateController.increase();
                    },
                    child: Icon(
                      Icons.add,
                      size: 70,
                    ),
                  ),
                  Obx(() => Text(
                    n.toString(),
                    style: TextStyle(fontSize: 70),
                  )),
                  InkWell(
                    onTap: () {
                      stateController.decrease();

                    },
                    child: Icon(
                      Icons.remove,
                      size: 70,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
