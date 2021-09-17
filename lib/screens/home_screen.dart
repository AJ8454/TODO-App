import 'package:flutter/material.dart';
import 'package:todo_app/utility/constant.dart';
import 'package:todo_app/widget/add_todo_dialog_widget.dart';
import 'package:todo_app/widget/change_theme_button.dart';
import 'package:todo_app/widget/todo_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      const TodoListWidget(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppTitle),
        actions: const [
          ChangeThemeButtonWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: 'Todos',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
        showDialog(
          context: context,
         builder: (_) =>  const AddTodoDialogWidget(),
          barrierDismissible: false,
        ),

        child: Icon(
          Icons.add,
          size: 30.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
