import 'package:flutter/material.dart';
import 'package:flutter_stateless_stateful/components/task.dart';
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
        child: ListView(children: const [
          Task(
              'Aprender Flutter',
              'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
              3),
          Task(
              'Melhorar Poo',
              'https://hermes.dio.me/articles/cover/b426eb2a-48f8-44e2-815b-3236272a7ca5.png',
              4),
          Task(
              'Descansar',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz8mTFIJiA71CsM_brlkyxYLTHH--kqpARcw&usqp=CAU',
              1),
          Task(
              'Comer',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpz7xQHPpe3kr0dJ5F5UFTk2YjEewHVKB2SA&usqp=CAU',
              1),
          Task(
              'Revisar Flutter',
              'https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI',
              1),
          Task(
              'Jogar',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMUHVeyU5yqO0WIn83K9ZaGTeNhvqWEfhg8w&usqp=CAU',
              1),
          Task(
              'Jantar',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaLv6-mm8bl4yUl3NxnwzExHgTSlCAMoMMUw&usqp=CAU',
              1),
          SizedBox(
            height: 80,
          ),
        ]),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FormScreen()));
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
