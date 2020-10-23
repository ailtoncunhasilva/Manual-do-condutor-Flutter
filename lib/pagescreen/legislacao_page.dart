import 'package:flutter/material.dart';
import 'package:legislacao_transito/contents/content_legislacao.dart';

class LegislacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        title: Text('Legislação de Trânsito'),
        centerTitle: true,
      ),
      body: ConteudoLegislacao(),
    );
  }
}