import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNotes extends StatefulWidget {
  const HomeNotes({super.key});

  @override
  State<HomeNotes> createState() => _HomeNotesState();
}

class _HomeNotesState extends State<HomeNotes> {
  List<Map<String, dynamic>> notes = [
    {"title": "flutter", "body": "this is flutter"}
  ];
  var titlecottroller = TextEditingController();

  void insernotes(){
    notes.add({"title": titlecottroller.text  , "body": "body static" });
    setState(() {
    });

    Navigator.pop(context);
  }

  void showbootsheet(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 200.h,
              width: 350.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: titlecottroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Title",
                    ),
                  ),
                  ElevatedButton(onPressed: insernotes, child: Text("Save"))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: notes.isEmpty
            ? Center(
                child: Text("No notes added"),
              )
            : ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200.h,
                    width: 350.w,
                    color: Colors.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          notes[index]["title"] ?? "",
                          style: TextStyle(fontSize: 30.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          notes[index]["body"] ?? "",
                          style: TextStyle(fontSize: 30.sp),
                        ),
                      ],
                    ),
                  );
                }),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showbootsheet(context);
            },
            child: Icon(Icons.add)));
  }
}
