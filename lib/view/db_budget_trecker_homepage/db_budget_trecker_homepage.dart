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
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final amountController = TextEditingController();
              final isIncomeController = TextEditingController();
              final catController = TextEditingController();
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('hgfd'),
                    content: Column(
                      children: [
                        TextField(
                          controller: amountController,
                        ),
                        TextField(
                          controller: isIncomeController,
                        ),
                        TextField(
                          controller: catController,
                        )
                      ],
                    ),
                    actions: [TextButton(onPressed: () {
                     controller.insertRecord(amountController.text, isIncomeController.text, catController.text);
                    }, child: Text('Save'))
                    ],
                  );
                },
              );
            },
          ),
        ));
  }
}
