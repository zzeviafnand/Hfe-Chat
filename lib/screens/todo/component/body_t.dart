import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hfe_chat/models/todo_sqflite/model/todo_models.dart';
import 'package:hfe_chat/models/todo_sqflite/todo_database.dart';
import 'package:hfe_chat/screens/todo/component/page/edit_todo_page.dart';
import 'package:hfe_chat/screens/todo/component/page/todo_detail_page.dart';
import 'package:hfe_chat/screens/todo/component/todo_bar.dart';
import 'package:hfe_chat/screens/todo/component/widget/todo_card_widget.dart';
class BodyTPage extends StatefulWidget {
  const BodyTPage({ Key? key }) : super(key: key);

  @override
  State<BodyTPage> createState() => _BodyTPageState();
}

class _BodyTPageState extends State<BodyTPage> {
  late List<ToDo> toDos;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }

  @override
  void dispose() {
    ToDoDataBase.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    toDos = await ToDoDataBase.instance.readAllToDos();

    setState(() => isLoading = false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ToDoBar(),
            Center(
              child: isLoading
              ? const CircularProgressIndicator()
              : toDos.isEmpty
                  ? const Text(
                      'No Notes',
                      style: TextStyle(color: Colors.black54, fontSize: 24),
                    )
                  : buildToDos(),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddEditToDoPage()),
            );

            refreshNotes();
          }
        ),
      );
  }
  Widget buildToDos() => ListView.builder(
    shrinkWrap: true,
    itemCount: toDos.length,
    itemBuilder: (context, index) {
          final toDo = toDos[index];

          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ToDoDetailPage(toDoId: toDo.id!),
              ));

              refreshNotes();
            },
            child: ToDoCardWidget(toDo: toDo, index: index),
          );
        },);   
}