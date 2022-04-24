import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/data/schema/endpoint.dart';
import 'package:graphql_todo/data/schema/get_task_schema.dart';
import 'package:graphql_todo/providers/get_task_model.dart';
import 'package:logger/logger.dart';
import 'package:riverpod/riverpod.dart';

import 'generic_state.dart';

final todoProvider =
    StateNotifierProvider<TodoStateNotifier, TodoState<List<GetTask>>>((ref) {
  return TodoStateNotifier();
});

class TodoStateNotifier extends StateNotifier<TodoState<List<GetTask>>> {
  TodoStateNotifier() : super(const TodoState.idle());

  final Endpoint _endpoint = Endpoint();
  var logger = Logger();

  Future<List<GetTask>> getTask({String? task, String? status}) async {
    try {
      state = const TodoState.loading();
      ValueNotifier<GraphQLClient> _client = _endpoint.getClient();

      final result = await _client.value.query(QueryOptions(
        document: gql(GetTaskSchema.getTaskJson),
      ));
      final res = (result.data!['getTodos'] as List)
          .map((data) => GetTask.fromJson(data))
          .toList();
      state = TodoState.success(res);
      logger.d(result.data);

      if (result.hasException) {
        state = const TodoState.hasError('There is an error fetching data');
        if (result.exception!.graphqlErrors.isEmpty) {
          state = TodoState.hasError(
              result.exception!.graphqlErrors[0].message.toString());
        }
      } else {
        return res;
      }

      return res;
    } catch (e) {
      throw e.toString();
    }
  }
}
