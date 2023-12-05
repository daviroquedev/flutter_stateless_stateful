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

class Task extends StatefulWidget {
  final String name;

  const Task(this.name, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  dynamic nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Stack(
            children: [
              Container(
                color: Colors.deepPurple,
                height: 140,
              ),
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            color: Colors.black26, height: 100, width: 72),
                        Container(
                            width: 200,
                            child: Text(
                              widget.name,
                              style: TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (nivel < 11) {
                                    nivel++;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  padding: const EdgeInsets.all(15.0)),
                              child: Transform.rotate(
                                angle: 3.14, // Angulo de 180 graus em radianos
                                child: Icon(
                                  Icons.diamond_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (nivel > -11) {
                                    nivel--;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.diamond_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent,
                                  padding: EdgeInsets.all(15.0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: LinearProgressIndicator(
                          color: Colors.pink,
                          value: nivel / 10,
                        ),
                        width: MediaQuery.of(context).size.width * 0.6,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'Nível: ${nivel > 10 ? 'Jedi' : (nivel < -10 ? 'Newbie' : nivel)}',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
