import 'package:flutter/material.dart';
import 'package:graphql_todo/providers/add_task_provider.dart';
import 'package:graphql_todo/widget/textform_widget.dart';
import 'package:graphql_todo/widget/validator.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final _formKey = GlobalKey<FormState>();
  final taskText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AddTaskprovider>();

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
            Text(
              controller.getStatus ? 'Loading...' : 'Enter Task',
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: TextFormInput(
                  controller: taskText,
                  labelText: 'Enter task name',
                  autovalidateMode: controller.getStatus
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  validator: (value) => validateTask(value),
                  obscureText: false),
            ),
            const SizedBox(
              height: 50,
            ),
            Consumer<AddTaskprovider>(builder: (context, task, child) {
              WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
                if (task.getResponse != '') {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(task.getResponse)));

                  task.clearResponse();
                }
              });
              return task.getStatus
                  ? const Center(
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : InkWell(
                      onTap: (() {
                        if (_formKey.currentState!.validate()) {
                          task.addTask(task: taskText.text, status: 'Active');
                        }
                      }),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        color: Colors.blueAccent,
                        child: const Center(
                          child: Text(
                            'Add New Task',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    );
            })
          ],
        ),
      ),
    );
  }
}
