import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedTodo;
  const TodoFormWidget({
    Key? key,
    this.title = '',
    this.description = '',
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onSavedTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildTitle(),
            const SizedBox(height: 8),
            buildDescription(context),
            const SizedBox(height: 32),
            buildButton(context),
          ],
        ),
      );

  Widget buildTitle() => TextFormField(
        initialValue: title,
        maxLines: 1,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
        validator: (title) {
          if (title!.isEmpty) {
            return 'The title cannot be empty';
          }
          return null;
        },
        onChanged: onChangedTitle,
      );

  Widget buildDescription(context) => TextFormField(
        initialValue: description,
        maxLines: 3,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          focusColor: Theme.of(context).primaryColor,
          labelText: 'Description',
        ),
        validator: (desctiption) {
          if (desctiption!.isEmpty) {
            return 'The description cannot be empty';
          }
          return null;
        },
        onChanged: onChangedDescription,
      );

  Widget buildButton(context) => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onSavedTodo,
          child: const Text('Save'),
        ),
      );
}
