import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/constant/constants.dart';
import 'package:riverpod/riverpod.dart';

final endPointProvider = Provider((ref) {
  return Endpoint();
});

class Endpoint {
  ValueNotifier<GraphQLClient> getClient() {
    ValueNotifier<GraphQLClient> client = ValueNotifier(GraphQLClient(
        cache: GraphQLCache(store: HiveStore()),
        link: HttpLink(
          Constants.url,
        )));
    return client;
  }
}
