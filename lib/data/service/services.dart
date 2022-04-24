import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/data/schema/add_task_schema.dart';
import 'package:graphql_todo/data/schema/endpoint.dart';
import 'package:graphql_todo/data/schema/get_task_schema.dart';
import 'package:graphql_todo/providers/add_task_model.dart';
import 'package:graphql_todo/providers/get_task_model.dart';
import 'package:logger/logger.dart';
import 'package:riverpod/riverpod.dart';

final todoServiceProvider = Provider((ref) {
  final endpointService = ref.watch(endPointProvider);
  return TodoService(endpointService);
});

class TodoService {
  final Endpoint endpoint;

  TodoService(this.endpoint);
  var logger = Logger();

  Future<List<GetTask>> getTask() async {
    try {
      final result = await endpoint.getClient().value.query(QueryOptions(
          document: gql(GetTaskSchema.getTaskJson),
          fetchPolicy: FetchPolicy.networkOnly,
          pollInterval: const Duration(milliseconds: 100)));
      final res = (result.data!['getTodos'] as List)
          .map((data) => GetTask.fromJson(data))
          .toList();
      // state = TodoState.success(res);
      logger.d(result.data);

      if (result.hasException) {
        throw 'We have encountered an error. Service will be restored very soon';
      } else {
        return res;
      }

      // return res;
    } on OperationException catch (e) {
      if (e.graphqlErrors.isNotEmpty) {
        throw e.graphqlErrors[0].message;
      } else {
        throw e.toString();
      }
    }
  }

  Future<QueryResult<Object?>> addTask(AddTask addTask) async {
    try {
      final result = await endpoint.getClient().value.mutate(MutationOptions(
          document: gql(AddTaskSchema.addTaskJson),
          variables: addTask.toJson()));

      if (result.hasException) {
        throw 'We have encountered an error. Service will be restored very soon';
      } else {
        logger.d(result.data);
        return result;
      }

      // return result;
    } on OperationException catch (e) {
      if (e.graphqlErrors.isNotEmpty) {
        throw e.graphqlErrors[0].message;
      } else {
        throw e.toString();
      }
    }
  }
}
