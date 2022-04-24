import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/providers/add_task_model.dart';
import 'package:graphql_todo/providers/get_task_model.dart';

abstract class IRepository {
  Future<List<GetTask>> getTask();
  Future<QueryResult<Object?>> addTask(AddTask addTask);
}
