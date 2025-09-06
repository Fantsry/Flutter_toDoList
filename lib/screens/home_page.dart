import 'package:flutter/material.dart';
import 'package:flutter_todolist/utils/todo_list.dart';
import 'package:flutter_todolist/screens/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final _controller = TextEditingController();

  final List toDoList = [
    ['Learn Flutter', false],
    ['Practice Flutter', false],
    ['Do Homework', false],
  ];

  void checkBoxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

void addTask() {
  if (_controller.text.trim().isEmpty) {
    // Kasih feedback ke user (misalnya pakai SnackBar)
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Isi dulu sebelum ditambahkan!"),
        duration: Duration(seconds: 2),
      ),
    );
    return;
  }

  setState(() {
    toDoList.add([_controller.text.trim(), false]);
    _controller.clear();
  });
}

void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do List'),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
      itemCount: toDoList.length,
      itemBuilder:  (BuildContext context, index) {
        return TodoList(
          taskName: toDoList[index][0],
          taskCompleted: toDoList[index][1],
          onChanged: (value) => checkBoxChanged(index),
          deleteFunction: (context) => setState(() {
            toDoList.removeAt(index);
          }),
        );
      },
    ),
    floatingActionButton: Row(
      children: [
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20
          ),
          child: TextField(
            controller: _controller, 
            decoration: InputDecoration(
              hintText: 'Tambah To Do List Baru',
              filled: true,
              fillColor: Colors.lightBlue,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                ),
              )
            ),
          ),
        ),
        ),
        FloatingActionButton(
          onPressed: () {
            addTask();
            
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
        ),
      ],
    ), // FloatingActionButton
    );
  }
}
