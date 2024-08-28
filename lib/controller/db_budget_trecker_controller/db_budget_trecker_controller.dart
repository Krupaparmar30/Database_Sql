import 'package:database_sql/helper/db_budget_trecker_helper/db_budget_trecker_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController {
  RxList data = [].obs;
  RxBool isIncome = false.obs;
  RxDouble totalIncome = 0.0.obs;
  RxDouble totalEX = 0.0.obs;

  TextEditingController amountController = TextEditingController();
  TextEditingController catController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initDb();
  }

  void setIncome(bool value) {
    isIncome.value = value;
  }

  Future initDb() async {
    await DbHelper.dbHelper.database;
    await getRecords();
  }

  Future insertRecord(double amount, int isIncome, String category) async {
    await DbHelper.dbHelper.insertData(amount, isIncome, category);
    await getRecords();
  }

  Future updateRecords(
      int id, double amount, int isIncome, String category) async {
    await DbHelper.dbHelper.updateData(id, amount, isIncome, category);
    await getRecords();
  }

  Future getRecords() async {
    totalIncome.value = 0.0;
    totalEX.value = 0.0;
    data.value = await DbHelper.dbHelper.readData();
    for (var i in data) {
      if (i['isIncome'] == 1) {
        totalIncome.value = totalIncome.value + i['amount'];
      } else {
        totalEX.value = totalEX.value + i['amount'];
      }
    }
  }

  Future removeRecords(int id) async {
    await DbHelper.dbHelper.deleteData(id);
    await getRecords();
  }
}
