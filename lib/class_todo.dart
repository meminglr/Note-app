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

  static List<Notes> listNotes = [];
}
