import 'package:flutter/material.dart';

import '../telas/telasdetalhes.dart';

class TelaLista extends StatefulWidget {
  const TelaLista({super.key});

  @override
  State<TelaLista> createState() => _TelaListaState();
}

class _TelaListaState extends State<TelaLista> {
  List<String> _filmes = ['Maze Runner', 'Jogos Vorazes', 'Frankstein'];

  List<String> _descricao = [
    'Thomas acorda em um lugar estranho, sem memória do passado, com um grupo de garotos.',
    'Katniss Everdeen se voluntaria para substituir sua irmã no brutal torneio de sobrevivência.',
    'Um cientista ambicioso cria vida a partir de partes de corpos humanos.',
  ];
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Filmes"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: "Nome do Filme"),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: _filmes.length,
              itemBuilder: (context, index) {
                final filme = _filmes[index];
                return ListTile(
                  title: Text(filme),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelasDetalhes(
                          filme: filme,
                          descricao: _descricao[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
