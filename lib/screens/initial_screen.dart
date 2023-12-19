import 'package:flutter/material.dart';
import 'package:flutter_stateless_stateful/components/task.dart';
import 'package:flutter_stateless_stateful/data/task_dao.dart';
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
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 70),
          child: FutureBuilder<List<Task>>(
            future: TaskDao().findAll(),
            builder: (context, snapshot) {
              List<Task>? items = snapshot.data;
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando - done')
                      ],
                    ),
                  );
                  break;
                case ConnectionState.waiting:
                  return const Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando - waiting')
                      ],
                    ),
                  );
                  break;
                case ConnectionState.active:
                  return const Center(
                    child: Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Carregando - active')
                      ],
                    ),
                  );
                  break;
                case ConnectionState.done:
                  if (snapshot.hasData && items != null) {
                    if (items.isNotEmpty) {
                      return ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Task tarefa = items[index];
                            return tarefa;
                          });
                    }
                    return const Center(
                      child: Column(children: [
                        Icon(
                          Icons.error_outline,
                          size: 128,
                        ),
                        Text(
                          'Não há nenhuma tarefa',
                          style: TextStyle(fontSize: 32),
                        )
                      ]),
                    );
                  }
                  return const Text('Erro ao carregar tarefas');
                  break;
              }
              return const Text('Erro desconhecido');
            },
          ),
        ),
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
              heroTag: null,
              child: opacity
                  ? const Icon(Icons.remove_red_eye_outlined) // Ícone com linha
                  : const Icon(Icons.remove_red_eye), // Ícone com olho aberto
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              print('AQUI');
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contextNew) =>
                              FormScreen(taskContext: context)))
                  // ignore: avoid_print
                  .then((value) => setState(() => print('RECARREGOU A TELA')));
            },
            heroTag: null,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
