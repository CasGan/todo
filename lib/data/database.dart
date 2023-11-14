import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference the hive box
  final _myBox = Hive.box('mybox');

// first time ever opening this
  void createInitialData() {
    toDoList = [
      ["Fill out To Do List", false],
      ["Workout", false],
    ];
  }

  //load the data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update db
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
