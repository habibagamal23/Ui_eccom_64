import 'package:flutter/material.dart';
import '../data/dbsqflite.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Map<String, dynamic>> myNotes = [];
  DBSqflite database = DBSqflite();

  @override
  void initState() {
    super.initState();
    fetchNotes();
  }

  fetchNotes() async {
    var data = await database.getNotes();
    setState(() {
      myNotes = data;
    });
  }

  insertNotes() async {
    await database.insertDb("New Note", "This is a note body");
    fetchNotes();
  }

  deleteNotes(int id) async {
    await database.deleteNote(id);
    fetchNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      body: myNotes.isEmpty
          ? Center(child: Text("No notes added"))
          : ListView.builder(
        itemCount: myNotes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(myNotes[index]["title"] ?? ""),
            subtitle: Text(myNotes[index]["body"] ?? ""),
            trailing: IconButton(
              onPressed: () => deleteNotes(myNotes[index]["id"]),
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: insertNotes,
        child: Icon(Icons.add),
      ),
    );
  }
}
