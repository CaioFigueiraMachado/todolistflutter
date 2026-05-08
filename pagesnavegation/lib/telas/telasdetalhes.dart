import 'package:flutter/material.dart';

class TelasDetalhes extends StatefulWidget {
  const TelasDetalhes({
    super.key,
    required this.filme,
    required this.descricao,
  });

  final String filme;
  final String descricao;

  @override
  State<TelasDetalhes> createState() => _TelasDetalhesState();
}

class _TelasDetalhesState extends State<TelasDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.filme), backgroundColor: Colors.blue),
      body: Center(child: Text("${widget.filme} - ${widget.descricao}")),
    );
  }
}
