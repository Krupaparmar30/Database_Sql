import 'dart:ffi';

import 'package:database_sql/controller/db_budget_trecker_controller/db_budget_trecker_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Budget trecker'),
      ),
      body: Obx(
        () => Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(controller.totalIncome.value.toString()),
                  Text(controller.totalEX.value.toString())
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) => Card(
                  color: controller.data[index]['isIncome'] == 1
                      ? Colors.green.shade100
                      : Colors.red.shade100,
                  child: ListTile(
                    title: Text(controller.data[index]['amount'].toString()),
                    leading: Text(controller.data[index]['id'].toString()),
                    subtitle:
                        Text(controller.data[index]['category'].toString()),
                    trailing:Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            controller.removeRecords(
                                int.parse(controller.data[index]['id'].toString()));
                          },
                          icon: Icon(Icons.delete),
                        ),
                        IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.edit),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Enter the details'),
              content: SizedBox(
                height: 180,
                child: Column(
                  children: [
                    TextField(
                      decoration:
                          InputDecoration(labelText: "Enter your amount"),
                      controller: controller.amountController,
                    ),
                    TextField(
                      controller: controller.catController,
                      decoration: InputDecoration(labelText: "Enter catagroy"),
                    ),
                    SwitchListTile(
                      value: controller.isIncome.value,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      double amount =
                          double.parse(controller.amountController.text);
                      int isIncome = controller.isIncome.value ? 1 : 0;
                      String category = controller.catController.text;

                      controller.insertRecord(amount, isIncome, category);
                      controller.amountController.clear();
                      controller.setIncome(false);
                      controller.catController.text;
                      Get.back();
                    },
                    child: Text('Save'))
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}

int index = 0;
