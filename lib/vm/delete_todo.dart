import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/data/controller/request_state_notifier.dart';
import 'package:graphql_todo/data/repository/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deleteTodoProvider =
    StateNotifierProvider<DeleteVM, RequestState<QueryResult<Object?>>>((ref) {
  return DeleteVM(ref);
});

class DeleteVM extends RequestStateNotifier<QueryResult<Object?>> {
  final Repository repository;

  DeleteVM(Ref ref) : repository = ref.read(todoProvider);

  void deleteTodo(int? todoId) => makeRequest(() => repository.delete(todoId));
}
