class AddTask {
  String task;
  String status;
  AddTask({
    required this.task,
    required this.status,
  });

  factory AddTask.fromJson(Map<String, dynamic> json) => AddTask(
        // date: DateTime.parse(json["date"]),
        task: json['task'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'task': task,
        'status': status,
      };
}
