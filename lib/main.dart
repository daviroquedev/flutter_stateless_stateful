import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarefas'),
          ),
          body: ListView(children: [
            Task('Aprender Flutter'),
            Task('Melhorar Poo'),
            Task('Descansar'),
            Task('Comer'),
            Task('Revisar Flutter'),
            Task('Revisar Poo comendo sucrilhos com leitwwwwww'),
            Task('Jantar'),
          ]),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        ));
  }
}

class Task extends StatelessWidget {
  final String name;
  const Task(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Stack(
            children: [
              Container(
                color: Colors.blue,
                height: 140,
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(color: Colors.black26, height: 100, width: 72),
                      Container(
                          width: 200,
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_drop_up),
                      )
                    ]),
              ),
            ],
          ),
        ));
  }
}
