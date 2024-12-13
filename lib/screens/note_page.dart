import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:note_app/buttons.dart';
import 'package:note_app/class_todo.dart';

class NotePage extends StatefulWidget {
  NotePage({
    Key? key,
    this.notes,
  }) : super(key: key);
  final Notes? notes;

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  void initState() {
    super.initState();

    if (widget.notes != null) {
      _titleController =
          TextEditingController(text: widget.notes!.titleController!.text);
      _textController =
          TextEditingController(text: widget.notes!.textController!.text);
      _currentNote = widget.notes;
    }
  }

  bool isFabVisible = true;
  TextEditingController _titleController = TextEditingController();
  TextEditingController _textController = TextEditingController();
  Notes? _currentNote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: isFabVisible
          ? FloatingActionButton.extended(
              onPressed: () {
                if (widget.notes != null) {
                  _currentNote!.title = _titleController.text;
                  _currentNote!.text = _textController.text;
                  _currentNote!.titleController = _titleController;
                  _currentNote!.textController = _textController;
                } else {
                  listNotes.add(Notes(
                      title: _titleController.text,
                      text: _textController.text,
                      titleController: _titleController,
                      textController: _textController));
                }

                FocusScope.of(context).unfocus();
                Navigator.pop(context);
              },
              label: const Row(
                children: [
                  Icon(Icons.done),
                  Text("Kaydet"),
                ],
              ))
          : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TitleTextFieid(tfTitle: _titleController),
            Expanded(
                child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                if (notification.direction == ScrollDirection.forward) {
                  setState(() {
                    isFabVisible = true;
                  });
                } else if (notification.direction == ScrollDirection.reverse) {
                  setState(() {
                    isFabVisible = false;
                  });
                }
                return true;
              },
              child: SingleChildScrollView(
                  child: TextTextField(
                tfText: _textController,
                autofocus: widget.notes == null ? true : false,
              )),
            ))
          ],
        ),
      ),
    );
  }
}
