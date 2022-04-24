import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_todo/data/service/state/controller.dart';
import 'package:graphql_todo/providers/add_task_provider.dart';
import 'package:graphql_todo/todo_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart' as provider;

void main() async {
  await initHiveForFlutter();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    // useEffect(() {
    //   ref.read(todoProvider.notifier).getTask();
    //   return null;
    // });

    return provider.MultiProvider(
      providers: [
        provider.ChangeNotifierProvider(create: (_) => AddTaskprovider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const TodoPage()),
    );
  }
}
