import 'dart:convert';

List<GetTask> getTaskFromJson(String str) =>
    List<GetTask>.from(json.decode(str).map((x) => GetTask.fromJson(x)));

String getTaskToJson(List<GetTask> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetTask {
  GetTask({
    this.id,
    this.task,
    this.status,
    this.timeAdded,
  });

  int? id;
  String? task;
  String? status;
  String? timeAdded;

  factory GetTask.fromJson(Map<String, dynamic> json) => GetTask(
        id: json["id"],
        task: json["task"],
        status: json["status"],
        timeAdded: json["timeAdded"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "task": task,
        "status": status,
        "timeAdded": timeAdded,
      };
}
