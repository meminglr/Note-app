import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:todo_app/screens/adding_page.dart';
import 'package:todo_app/class_todo.dart';
import 'package:todo_app/screens/edit_page.dart';
import 'package:todo_app/screens/note_page.dart';

class HomePage extends StatefulWidget {
  //static List listNotes = [Notes(title: "ti", text: "5")];

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notlar"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await Navigator.push(
                context, CupertinoPageRoute(builder: (builder) => NotePage()));
            setState(() {});
          },
          label: Row(
            children: [
              Icon(Icons.add),
              Text("Not Ekle"),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MasonryGridView.count(
          itemCount: listNotes.length,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          itemBuilder: (BuildContext context, int index) {
            int textLenght = listNotes[index].text.length;
            return FilledButton.tonal(
              onPressed: () async {
                await Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (builder) =>
                            NotePage(notes: listNotes[index])));
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listNotes[index].title,
                      maxLines: 2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      listNotes[index].text,
                      maxLines: textLenght < 150 ? textLenght % 50 : 15,
                    ),
                  ],
                ),
              ),
            );
          },
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
