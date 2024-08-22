import 'package:database_sql/helper/db_budget_trecker_helper/db_budget_trecker_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initDb();
  }

  Future<void> initDb() async {
    await DbHelper.dbHelper.database;
  }

  Future<void> insertRecord() async {
    await DbHelper.dbHelper.insertData();
  }
}
