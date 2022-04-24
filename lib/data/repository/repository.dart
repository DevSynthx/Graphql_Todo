import 'package:graphql/src/core/query_result.dart';
import 'package:graphql_todo/data/repository/i_repository.dart';
import 'package:graphql_todo/providers/add_task_model.dart';
import 'package:graphql_todo/providers/get_task_model.dart';
import 'package:riverpod/riverpod.dart';

import 'package:graphql_todo/data/service/services.dart';

final todoProvider = Provider((ref) {
  final todoService = ref.watch(todoServiceProvider);
  return Repository(todoService);
});

class Repository extends IRepository {
  TodoService todoService;
  Repository(this.todoService);

  @override
  Future<List<GetTask>> getTask() => todoService.getTask();

  @override
  Future<QueryResult<Object?>> addTask(AddTask addTask) =>
      todoService.addTask(addTask);
}
