import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_model.dart';

import 'todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TodoWidget(
      todo: Todo(
        createdTime: DateTime.now(),
        title: 'walk the Dog',
      ),
    );
  }
}