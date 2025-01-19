import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_app/class_todo.dart';
import 'package:note_app/screens/note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notlar"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await Navigator.push(context,
                CupertinoPageRoute(builder: (builder) => const NotePage()));
            setState(() {});
          },
          label: const Row(
            children: [
              Icon(Icons.add),
              Text("Not Ekle"),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Notes.listNotes.isEmpty
            ? const Center(
                child: Text(
                  "Not eklemeye başla !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              )
            : MasonryGridView.count(
                itemCount: Notes.listNotes.length,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                itemBuilder: (BuildContext context, int index) {
                  int textLenght = Notes.listNotes[index].text.length;
                  return FilledButton.tonal(
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (builder) =>
                                  NotePage(notes: Notes.listNotes[index])));
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            Notes.listNotes[index].title == ""
                                ? "Başlıksız Not"
                                : Notes.listNotes[index].title,
                            maxLines: 2,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            Notes.listNotes[index].text,
                            maxLines: textLenght < 150 &&
                                    Notes.listNotes[index].text != ""
                                ? textLenght % 50
                                : 15,
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
