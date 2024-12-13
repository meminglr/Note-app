// import 'package:flutter/material.dart';

// import 'package:todo_app/buttons.dart';
// import 'package:todo_app/class_todo.dart';

// class EditPage extends StatefulWidget {
//   EditPage({
//     Key? key,
//     required this.notes,
//   }) : super(key: key);
//   final Notes notes;

//   @override
//   State<EditPage> createState() => _EditPageState();
// }

// class _EditPageState extends State<EditPage> {
//   @override
//   void initState() {
//     super.initState();
//     _titleController =
//         TextEditingController(text: widget.notes.titleController!.text);
//     _textController =
//         TextEditingController(text: widget.notes.textController!.text);
//     _currentNote = widget.notes;
//   }

//   TextEditingController? _titleController;
//   TextEditingController? _textController;
//   Notes? _currentNote;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       floatingActionButton: FloatingActionButton.extended(
//           onPressed: () async {
//             _currentNote!.title = _titleController!.text;
//             _currentNote!.text = _textController!.text;
//             _currentNote!.titleController = _titleController;
//             _currentNote!.textController = _textController;
//             FocusScope.of(context).unfocus();
//             Navigator.pop(context);
//           },
//           label: Row(
//             children: [
//               Icon(Icons.done),
//               Text("Kaydet"),
//             ],
//           )),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: Column(
//           children: [
//             TitleTextFieid(tfTitle: _titleController!),
//             Expanded(
//                 child: SingleChildScrollView(
//                     child: TextTextField(tfText: _textController!)))
//           ],
//         ),
//       ),
//     );
//   }
// }
