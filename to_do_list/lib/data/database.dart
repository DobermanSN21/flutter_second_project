import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

//reference box
  final _myBox = Hive.box('myBox');

//run this method if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Hello! Let's make a list", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
