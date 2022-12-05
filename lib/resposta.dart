import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String? textoResposta;
  final void Function()? onSelected;

  const Resposta({super.key, this.textoResposta, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onSelected,
      child: Text(textoResposta!),
    );
  }
}
