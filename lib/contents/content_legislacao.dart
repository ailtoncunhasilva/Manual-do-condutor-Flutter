import 'package:flutter/material.dart';

class ConteudoLegislacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            textFontWeightBold(
              '1.Pré-requisitos ao candidato à habilitação:',
              Colors.black,
            ),
            textFontWeightNormal(
              '*Ser penalmente imputável –Pessoa que possa ser responsabilizada perante a LeiPenal;\n'
              '*Ser alfabetizado -Apenas saiba ler e escrever;\n'
              '*Possuir documento de identificação -RG, Carteira de Trabalho, Passaporte ou outro documento com foto;\n'
              '*Possuir CPF; (incluído pela Resolução 168 do CONTRAN).\n',
              Colors.black,
            ),
            textFontWeightNormal(
              'Obs.: O processo de habilitação tem duração de 12 meses.',
              Colors.red[800],
            ),
            textFontWeightBold(
              '2.Etapas do Processo de Habilitação:',
              Colors.black,
            ),
            textFontWeightNormal(
              '*Avaliação Psicológica e Exames Físico e Mental;\n'
              '*Curso Teórico com 45 horas-aula e Exame Teórico onde o candidato terá de acertar 70% do exame para aprovação;\n'
              '*Curso Prático de Direção (20horas-aulacategoria inicial A ou B) e Exame de Direção;', 
              Colors.black,
            ),
          ],
        ),
      ],
    );
  }

  Widget textFontWeightBold(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }

  Widget textFontWeightNormal(String text1, Color color1) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
      child: Text(
        text1,
        style: TextStyle(
          fontSize: 18,
          color: color1,
        ),
      ),
    );
  }
}
