import 'package:flutter/material.dart';

class Notes {
  String title;
  String text;
  TextEditingController? titleController;
  TextEditingController? textController;

  Notes({
    required this.title,
    required this.text,
    required this.titleController,
    required this.textController,
  });
}

List<Notes> listNotes = [
  Notes(
      title: "tittitletitlele",
      text: "textitletitletitletitletitletitletitletitletitletitletitletitlet",
      titleController: TextEditingController(),
      textController: TextEditingController()),
  Notes(
      title: "tittitletitletitletitletitletitlele",
      text: "ttitletitleext",
      titleController: TextEditingController(),
      textController: TextEditingController()),
  Notes(
      title: "tititletle",
      text: "textitletitletitletitletitlet",
      titleController: TextEditingController(),
      textController: TextEditingController()),
];
