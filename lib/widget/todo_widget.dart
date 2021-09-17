import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_model.dart';
import 'package:todo_app/utility/constant.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;
  const TodoWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).backgroundColor,
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              checkColor: Colors.white,
              value: todo.isDone,
              onChanged: (_) {},
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.title!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kAppBarColor,
                      fontSize: 22,
                    ),
                  ),
                  if (todo.description!.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      child: Text(
                        todo.description!,
                        style: const TextStyle(
                          height: 1.5,
                          fontSize: 20,
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      );
}
