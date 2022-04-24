import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/data/controller/request_state_notifier.dart';
import 'package:graphql_todo/data/repository/repository.dart';
import 'package:graphql_todo/providers/add_task_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addTodoProvider =
    StateNotifierProvider<AddTodoVM, RequestState<QueryResult<Object?>>>((ref) {
  return AddTodoVM(ref);
});

class AddTodoVM extends RequestStateNotifier<QueryResult<Object?>> {
  final Repository repository;

  AddTodoVM(Ref ref) : repository = ref.read(todoProvider);

  void addTodo(AddTask addTask) =>
      makeRequest(() => repository.addTask(addTask));
}
