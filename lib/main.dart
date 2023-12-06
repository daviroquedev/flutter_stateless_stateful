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
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-wzWps1uuBquYdWZ3RrfB-lsH1OwA2Oc4Gw&usqp=CAU',
                1),
            Task(
                'Jogar',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMUHVeyU5yqO0WIn83K9ZaGTeNhvqWEfhg8w&usqp=CAU',
                1),
            Task(
                'Jantar',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaLv6-mm8bl4yUl3NxnwzExHgTSlCAMoMMUw&usqp=CAU',
                1),
          ]),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        ));
  }
}

class Task extends StatefulWidget {
  final String name;
  final String image;
  final int dificulty;

  const Task(this.name, this.image, this.dificulty, {super.key});

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
                            color: Colors.black26,
                            height: 100,
                            width: 72,
                            child: Image.network(
                              widget.image,
                              fit: BoxFit.cover,
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 200,
                                child: Text(
                                  widget.name,
                                  style: TextStyle(
                                    fontSize: 22,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: (widget.dificulty >= 1)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: (widget.dificulty >= 2)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: (widget.dificulty >= 3)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: (widget.dificulty >= 4)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: (widget.dificulty >= 5)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (nivel / widget.dificulty <= 10) {
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
                                  if (nivel / widget.dificulty >= -10) {
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
                          value: (nivel / widget.dificulty) / 10,
                        ),
                        width: MediaQuery.of(context).size.width * 0.6,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'Nível: ${nivel / widget.dificulty > 10 ? 'Jedi' : (nivel / widget.dificulty < -10 ? 'Newbie' : nivel)}',
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
