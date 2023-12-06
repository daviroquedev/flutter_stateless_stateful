import 'package:flutter/material.dart';
import 'package:flutter_stateless_stateful/components/difficulty.dart';

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
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Cor da sombra
                    spreadRadius: 2, // Raio de propagação da sombra
                    blurRadius: 4, // Raio de desfoque da sombra
                    offset: const Offset(
                        0, 2), // Deslocamento da sombra em relação ao Container
                  ),
                ],
                color: Colors.deepPurple,
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black26,
                          ),
                          height: 100,
                          width: 72,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child:
                                Image.network(widget.image, fit: BoxFit.cover),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 200,
                              child: Text(
                                widget.name,
                                style: const TextStyle(
                                  fontSize: 22,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          Difficulty(
                            difficultyLevel: widget.dificulty,
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
                              child: const Icon(
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
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                padding: const EdgeInsets.all(15.0)),
                            child: const Icon(
                              Icons.diamond_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: LinearProgressIndicator(
                        color: nivel > 20
                            ? const Color.fromARGB(255, 44, 3,
                                248) // Se o nível for maior que 20, a cor é azul
                            : nivel >= 10
                                ? Colors
                                    .blue // Se o nível for maior ou igual a 0, a cor é azul claro
                                : const Color.fromARGB(255, 59, 255,
                                    72), // Se nível for menor que 0, a cor é verde
                        value: (nivel / widget.dificulty) / 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nível: ${nivel / widget.dificulty > 10 ? 'Jedi' : (nivel / widget.dificulty < -10 ? 'Newbie' : nivel)}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
