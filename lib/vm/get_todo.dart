import 'package:graphql_todo/data/controller/request_state_notifier.dart';
import 'package:graphql_todo/data/repository/repository.dart';
import 'package:graphql_todo/providers/get_task_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getTodoProvider =
    StateNotifierProvider<GetTodoVM, RequestState<List<GetTask>>>((ref) {
  return GetTodoVM(ref);
});

class GetTodoVM extends RequestStateNotifier<List<GetTask>> {
  final Repository repository;

  GetTodoVM(Ref ref) : repository = ref.read(todoProvider) {
    getTodo();
  }

  void getTodo() => makeRequest(() => repository.getTask());
}
