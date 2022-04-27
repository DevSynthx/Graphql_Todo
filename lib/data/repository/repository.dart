import 'package:graphql/src/core/query_result.dart';
import 'package:graphql_todo/data/repository/i_repository.dart';
import 'package:graphql_todo/models/add_task_model.dart';
import 'package:graphql_todo/models/get_task_model.dart';
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
  Future<QueryResult<Object?>> delete(int? taskId) async {
    final delete = await todoService.delete(taskId);
    return delete;
  }

  @override
  Future<List<GetTask>> getTask() => todoService.getTask();

  @override
  Future<QueryResult<Object?>> addTask(AddTask addTask) =>
      todoService.addTask(addTask);
}
