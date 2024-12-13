// import 'package:flutter/material.dart';
// import 'package:todo_app/buttons.dart';
// import 'package:todo_app/class_todo.dart';
// import 'package:todo_app/screens/homepage.dart';

// class AddingPage extends StatefulWidget {
//   const AddingPage({super.key});

//   @override
//   State<AddingPage> createState() => _AddingPageState();
// }

// class _AddingPageState extends State<AddingPage> {
//   TextEditingController tfTitle = TextEditingController();
//   TextEditingController tfText = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       floatingActionButton: FloatingActionButton.extended(
//           onPressed: () {
//             listNotes.add(Notes(
//                 title: tfTitle.text,
//                 text: tfText.text,
//                 titleController: tfTitle,
//                 textController: tfText));
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
//             TitleTextFieid(tfTitle: tfTitle),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: TextTextField(tfText: tfText),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
