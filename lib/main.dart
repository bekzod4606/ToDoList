import 'package:flutter/material.dart';

void main() {
  runApp(const ToDoApp());
}

class Todo {
  Todo({required this.name, required this.checked});
  final String name;
  bool checked;
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To Do List',
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  int itemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Todo list',
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              itemIndex++;
              setState(() {});
            },
            icon: const Icon(Icons.add),
            color: Colors.white,
          )
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: itemIndex + 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              '$index',
              style: const TextStyle(color: Colors.black, fontSize: 24),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            thickness: 10,
          );
        },
      ),
    );
  }
}
