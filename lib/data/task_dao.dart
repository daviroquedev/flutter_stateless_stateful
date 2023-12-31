import 'package:flutter_stateless_stateful/components/task.dart';
import 'package:flutter_stateless_stateful/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  // static siginifica que vai ter o mesmo valor para qualquer instancia
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT,'
      '$_difficulty INTEGER,'
      '$_image TEXT)';

  static const String _tablename = 'taskTable';
  static const String _name = 'nome';
  static const String _difficulty = 'dificuldade';
  static const String _image = 'imagem';

  save(Task tarefa) async {
    print('iniciando o save:');

    final Database bancoDeDados = await getDatabase();
    var itemExists = await find(tarefa.name);
    Map<String, dynamic> taskMap = toMap(tarefa);

    if (itemExists.isEmpty) {
      print('Tare nao existe');

      return await bancoDeDados.insert(_tablename, taskMap);
    } else {
      print('A tarefa ja existia');
      return await bancoDeDados.update(
        _tablename,
        taskMap,
        where: '$_name = ?',
        whereArgs: [tarefa.name],
      );
    }
  }

  Map<String, dynamic> toMap(Task tarefa) {
    print('CONVERTENDO TAREFA EM MAP');

    final Map<String, dynamic> mapaDeTarefas = Map();
    mapaDeTarefas[_name] = tarefa.name;
    mapaDeTarefas[_difficulty] = tarefa.dificulty;
    mapaDeTarefas[_image] = tarefa.image;

    print('Mapa de tarefas é: $mapaDeTarefas');
    return mapaDeTarefas;
  }

  // Future que retorna uma lista de tasks
  Future<List<Task>> findAll() async {
    print('Acessando o findAll');
    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result =
        await bancoDeDados.query(_tablename);
    print('Procurando dados no banco de dados.. encontrado: $result');

    return toList(result);
  }

  List<Task> toList(List<Map<String, dynamic>> mapaDeTarefas) {
    print('CONVERTENDO TOLIST:');

    final List<Task> tarefas = [];
    for (Map<String, dynamic> linha in mapaDeTarefas) {
      final Task tarefa = Task(linha[_name], linha[_image], linha[_difficulty]);

      tarefas.add(tarefa);
    }
    print('LISTA DE TAREFAS $tarefas');
    return tarefas;
  }

  Future<List<Task>> find(String nomeDaTarefa) async {
    print('ACESSANDO FIND:');

    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result = await bancoDeDados
        .query(_tablename, where: '$_name = ?', whereArgs: [nomeDaTarefa]);

    print('tarefa encontrada ${toList(result)}');
    return toList(result);
  }

  delete(String nomeDaTarefa) async {
    print('deletando tarefa');

    final Database bancoDeDados = await getDatabase();
    return bancoDeDados
        .delete(_tablename, where: '$_name = ?', whereArgs: [nomeDaTarefa]);
  }
}
