import 'package:flutter/material.dart';
import 'package:flutter_stateless_stateful/components/task.dart';
import 'package:flutter_stateless_stateful/data/task_inherited.dart';
import 'package:flutter_stateless_stateful/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
      ),
      backgroundColor: const Color.fromARGB(255, 221, 168, 245),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(children: TaskInherited.of(context).taskList),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  opacity = !opacity;
                });
              },
              child: opacity
                  ? const Icon(Icons.remove_red_eye_outlined) // Ícone com linha
                  : const Icon(Icons.remove_red_eye), // Ícone com olho aberto
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (contextNew) =>
                          FormScreen(taskContext: context)));
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
