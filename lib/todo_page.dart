import 'package:flutter/material.dart';
import 'package:graphql_todo/data/controller/request_state_notifier.dart';
import 'package:graphql_todo/providers/add_task_model.dart';
import 'package:graphql_todo/vm/add_todo.dart';
import 'package:graphql_todo/vm/get_todo.dart';
import 'package:graphql_todo/widget/textform_widget.dart';
import 'package:graphql_todo/widget/validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart' as provider;

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final _formKey = GlobalKey<FormState>();
  final taskText = TextEditingController();
  bool isFetched = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final val = ValueNotifier('');
    return GestureDetector(
      onTap: (() => FocusManager.instance.primaryFocus!.unfocus()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Graphql Todo list'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            child: Column(
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
                Form(
                  key: _formKey,
                  child: TextFormInput(
                      controller: taskText,
                      labelText: 'Enter task name',
                      autovalidateMode: val.value.isEmpty
                          ? AutovalidateMode.disabled
                          : AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        val.value = value!;
                        validateTask(value);
                        return null;
                      },
                      obscureText: false),
                ),
                const SizedBox(
                  height: 50,
                ),
                HookConsumer(builder: (context, ref, child) {
                  final addTask = ref.watch(addTodoProvider);
                  // WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
                  //   if (addTask is Success) {
                  //     ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(content: Text(task.getResponse)));

                  //     // task.clearResponse();
                  //   }
                  // });

                  ref.listen<RequestState>(addTodoProvider, (previous, value) {
                    if (value is Loading) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please wait')));
                    }
                    if (value is Success) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Task added successfully')));
                      ref.refresh(getTodoProvider);
                    }
                  });
                  return addTask is Loading
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
                              var sendTask = AddTask(
                                  task: taskText.text, status: 'Active');

                              ref
                                  .read(addTodoProvider.notifier)
                                  .addTodo(sendTask);
                            }
                          }),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            color: Colors.blueAccent,
                            child: const Center(
                              child: Text(
                                'Add New Task',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                }),
                const SizedBox(
                  height: 20,
                ),
                HookConsumer(builder: ((context, ref, child) {
                  // final todo = ref.watch(todoProvider);
                  final getTodo = ref.watch(getTodoProvider);
                  return getTodo.when(
                      idle: () {
                        return const SizedBox(
                          height: 25,
                          width: 25,
                          child: CircularProgressIndicator(),
                        );
                      },
                      loading: () {
                        return const SizedBox(
                          height: 25,
                          width: 25,
                          child: CircularProgressIndicator(),
                        );
                      },
                      error: (e, s) => Text(e.toString()),
                      // hasError: (e) => Text(e[0].toString()),
                      success: (data) {
                        return SizedBox(
                          height: 500,
                          // child: Text(controller.getTasks.length.toString()),
                          child: ListView.separated(
                            itemCount: data!.length,
                            itemBuilder: (context, index) {
                              final task = data[index];
                              return Container(
                                height: 60,
                                color: Colors.grey.shade200,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(task.task.toString()),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(task.status.toString())
                                        ],
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.delete_sweep,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                ),
                              );

                              // ListTile(
                              //   title: Text(task.task.toString()),
                              //   subtitle: Text(task.status.toString()),
                              //   tileColor: Colors.grey.shade200,
                              //   trailing: const Icon(
                              //     Icons.delete_sweep,
                              //     color: Colors.red,
                              //   ),
                              // );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(
                                height: 5,
                              );
                            },
                          ),
                        );
                      });
                })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
