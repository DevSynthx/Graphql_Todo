import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/data/schema/add_task_schema.dart';
import 'package:graphql_todo/data/schema/endpoint.dart';
import 'package:logger/logger.dart';

class AddTaskprovider extends ChangeNotifier {
  String _response = "";
  bool _status = false;

  String get getResponse => _response;
  bool get getStatus => _status;

  final Endpoint _endpoint = Endpoint();
  var logger = Logger();

  void addTask({String? task, String? status}) async {
    _status = true;
    _response = 'please wait...';
    notifyListeners();

    ValueNotifier<GraphQLClient> _client = _endpoint.getClient();

    final result = await _client.value.mutate(MutationOptions(
        document: gql(AddTaskSchema.addTaskJson),
        variables: {"task": task, "status": status}));

    if (result.hasException) {
      print(result.exception);
      logger.w(result.exception);
      _status = false;

      if (result.exception!.graphqlErrors.isEmpty) {
        _response = 'Make sure you have a stable internet connection';
      } else {
        _response = result.exception!.graphqlErrors[0].message.toString();
      }
      notifyListeners();
    } else {
      _status = false;
      _response = " Task was Added";
      logger.d(result.data);
      notifyListeners();
    }
  }

  void clearResponse() {
    _response = '';
    notifyListeners();
  }
}
