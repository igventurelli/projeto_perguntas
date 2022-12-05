import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

void main() {
  runApp(const PerguntasApp());
}

class _PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(
              pergunta: perguntas[perguntaSelecionada],
            ),
            Resposta(
              textoResposta: 'Resposta 1',
              onSelected: responder,
            ),
            Resposta(
              textoResposta: 'Resposta 2',
              onSelected: responder,
            ),
            Resposta(
              textoResposta: 'Resposta 3',
              onSelected: responder,
            )
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({super.key});

  @override
  State<PerguntasApp> createState() {
    return _PerguntasAppState();
  }
}
