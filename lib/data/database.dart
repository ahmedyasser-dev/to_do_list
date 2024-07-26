import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];
  final myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList = [
      ['Make a To DO List app!', true],
      ['Feed your cat!', false],
    ];
  }

  void loadData(){
    toDoList = myBox.get("TODOLIST");
  }

  void updateDataBase(){
    myBox.put("TODOLIST", toDoList);
  }
}