import 'package:database_sql/helper/db_budget_trecker_helper/db_budget_trecker_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController {
RxDouble totalIncome=0.0.obs;
RxDouble totalEX=0.0.obs;

  RxList data=[].obs;
  RxBool isIncome=false.obs;

  TextEditingController amountController = TextEditingController();
  TextEditingController catController = TextEditingController();



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initDb();
  }

void setIncome(bool value)
{
  isIncome.value=value;
}




  Future<void> initDb() async {
    await DbHelper.dbHelper.database;
    await getRecords();
  }

  Future<void> insertRecord(
      double amount, int isIncome, String category) async {
    await DbHelper.dbHelper.insertData(amount, isIncome, category);
    getRecords();
  }
  Future<RxList> getRecords()
  async {
    totalIncome.value=0.0;
    totalEX.value=0.0;
    data.value=await DbHelper.dbHelper.readData();
    for(var i in data)
      {
        if(i["isIncome"]==1)
          {
            totalIncome.value=totalIncome.value+i['amount'];

          }
        else
          {
            totalEX.value=totalEX.value+i['amount'];
          }
      }
    return data;

  }


  Future<void> removeRecords(int id)
  async {
   await  DbHelper.dbHelper.deleteData(id);
   await getRecords();
  }
  Future<void> updateRecords(int id,double amount ,int isIncome,String category)
  async {
   await  DbHelper.dbHelper.updateData(id,amount,isIncome,category);
   await getRecords();
  }

}
