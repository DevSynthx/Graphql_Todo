class DeleteTaskSchema {
  static String deleteTaskJson = """

mutation(\$todoId: Int!){
  deleteTodo(todoId:\$todoId){
    id
    status
    task
  }
}


""";
}
