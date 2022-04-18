import 'package:flutter/material.dart';
import 'package:graphql_todo/widget/textform_widget.dart';
import 'package:graphql_todo/widget/validator.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    final task = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graphql Todo list'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Enter Task',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormInput(
                controller: task,
                labelText: 'Enter task name',
                validator: (value) => validateTask(value),
                obscureText: false)
          ],
        ),
      ),
    );
  }
}
