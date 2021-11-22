import 'package:flutter/material.dart';
import 'package:hfe_chat/models/todo_sqflite/model/todo_models.dart';
import 'package:hfe_chat/models/todo_sqflite/todo_database.dart';
import 'package:hfe_chat/screens/todo/component/widget/todo_form_widget.dart';

class AddEditToDoPage extends StatefulWidget {
  final ToDo? toDo;

  const AddEditToDoPage({
    Key? key,
    this.toDo,
  }) : super(key: key);
  @override
  _AddEditToDoPageState createState() => _AddEditToDoPageState();
}

class _AddEditToDoPageState extends State<AddEditToDoPage> {
  final _formKey = GlobalKey<FormState>();
  late bool isImportant;
  late int number;
  late String title;
  late String deskripsi;

  @override
  void initState() {
    super.initState();

    isImportant = widget.toDo?.isImportant ?? false;
    number = widget.toDo?.number ?? 0;
    title = widget.toDo?.title ?? '';
    deskripsi = widget.toDo?.deskripsi ?? '';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [buildButton()],
        ),
        body: Form(
          key: _formKey,
          child: ToDoFormWidget(
            isImportant: isImportant,
            number: number,
            title: title,
            deskripsi: deskripsi,
            onChangedImportant: (isImportant) =>
                setState(() => this.isImportant = isImportant),
            onChangedNumber: (number) => setState(() => this.number = number),
            onChangedTitle: (title) => setState(() => this.title = title),
            onChangedDeskripsi: (deskripsi) =>
                setState(() => this.deskripsi = deskripsi),
          ),
        ),
      );

  Widget buildButton() {
    final isFormValid = title.isNotEmpty && deskripsi.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: isFormValid ? null : Colors.grey.shade700,
        ),
        onPressed: addOrUpdateNote,
        child: const Text('Save'),
      ),
    );
  }

  void addOrUpdateNote() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final isUpdating = widget.toDo != null;

      if (isUpdating) {
        await updateNote();
      } else {
        await addNote();
      }

      Navigator.of(context).pop();
    }
  }

  Future updateNote() async {
    final note = widget.toDo!.copy(
      isImportant: isImportant,
      number: number,
      title: title,
      deskripsi: deskripsi,
    );

    await ToDoDataBase.instance.update(note);
  }

  Future addNote() async {
    final note = ToDo(
      title: title,
      isImportant: true,
      number: number,
      deskripsi: deskripsi,
      createdTime: DateTime.now(),
    );

    await ToDoDataBase.instance.create(note);
  }
}