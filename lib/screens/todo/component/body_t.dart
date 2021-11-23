import 'package:flutter/material.dart';
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
      appBar: ToDoBar(
        height: 120,
        child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("HFE CHAT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  const Spacer(),
                  const Icon(Icons.search_outlined,
                  size: 40,
                  color: Colors.white,),
                  const SizedBox(
                    width: 15,
                  ),
                 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/ 9.0,
                      height: MediaQuery.of(context).size.height /15.0,
                      decoration: BoxDecoration(
                        // border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1)
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage
                          ('https://images.unsplash.com/photo-1494708001911-679f5d15a946?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60'))
                      ),
                    ),
                  ),
              ],
            ),
      ),
      body: Center(
              child: isLoading
              ? const CircularProgressIndicator()
              : toDos.isEmpty
                  ? const Text(
                      'No Notes',
                      style: TextStyle(color: Colors.black54, fontSize: 24),
                    )
                  : buildToDos(),),
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