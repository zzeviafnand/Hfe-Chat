const String tableToDos  = 'todos';
class ToDoFields {
   static final List<String> values = [
    /// Add all fields
    id, isImportant, number, title, deskripsi, time
  ];
   static const String id = '_id';
   static const String isImportant = 'isImportant';
   static const String number = 'number';
   static const String title = 'title';
   static const String deskripsi = 'deskripsi';
   static const String time = 'time';
}
  class ToDo {
    late final int? id;
    late final bool isImportant;
    late final int number;
    late final String title;
    late final String deskripsi;
    late final DateTime createdTime;

  ToDo({
    this.id,
    required this.isImportant,
    required this.number,
    required this.title,
    required this.deskripsi,
    required this.createdTime,
  });

  ToDo copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? deskripsi,
    DateTime? createdTime,
  }) =>
      ToDo(
        id: id ?? this.id,
        isImportant: isImportant ?? this.isImportant,
        number: number ?? this.number,
        title: title ?? this.title,
        deskripsi: deskripsi ?? this.deskripsi,
        createdTime: createdTime ?? this.createdTime,
      );

  static ToDo fromJson(Map<String, Object?> json) => ToDo(
        id: json[ToDoFields.id] as int?,
        isImportant: json[ToDoFields.isImportant] == 1,
        number: json[ToDoFields.number] as int,
        title: json[ToDoFields.title] as String,
        deskripsi: json[ToDoFields.deskripsi] as String,
        createdTime: DateTime.parse(json[ToDoFields.time] as String),
      );

  Map<String, Object?> toJson() => {
        ToDoFields.id: id,
        ToDoFields.title: title,
        ToDoFields.isImportant: isImportant ? 1 : 0,
        ToDoFields.number: number,
        ToDoFields.deskripsi: deskripsi,
        ToDoFields.time: createdTime.toIso8601String(),
      };
}