import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/models/add_task_model.dart';
import 'package:graphql_todo/models/get_task_model.dart';

abstract class IRepository {
  Future<List<GetTask>> getTask();
  Future<QueryResult<Object?>> addTask(AddTask addTask);
  Future<QueryResult<Object?>> delete(int? taskId);
}
