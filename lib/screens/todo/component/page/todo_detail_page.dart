import 'package:flutter/material.dart';
import 'package:hfe_chat/models/todo_sqflite/model/todo_models.dart';
import 'package:hfe_chat/models/todo_sqflite/todo_database.dart';
import 'package:hfe_chat/screens/todo/component/page/edit_todo_page.dart';
import 'package:intl/intl.dart';

class ToDoDetailPage extends StatefulWidget {
  final int toDoId;

  const ToDoDetailPage({
    Key? key,
    required this.toDoId
  }) : super(key: key);

  @override
  _ToDoDetailPageState createState() => _ToDoDetailPageState();
}

class _ToDoDetailPageState extends State<ToDoDetailPage> {
  late ToDo toDo;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNote();
  }

  Future refreshNote() async {
    setState(() => isLoading = true);

    this.toDo = await ToDoDataBase.instance.readToDo(widget.toDoId);

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [editButton(), deleteButton()],
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(12),
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  children: [
                    Text(
                      toDo.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      DateFormat.yMMMd().format(toDo.createdTime),
                      style: const TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      toDo.deskripsi,
                      style: const TextStyle(color: Colors.black54, fontSize: 18),
                    )
                  ],
                ),
              ),
      );

  Widget editButton() => IconButton(
      icon: const Icon(Icons.edit_outlined),
      onPressed: () async {
        if (isLoading) return;

        await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddEditToDoPage(toDo: toDo),
        ));

        refreshNote();
      });

  Widget deleteButton() => IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () async {
          await ToDoDataBase.instance.delete(widget.toDoId);

          Navigator.of(context).pop();
        },
      );
}