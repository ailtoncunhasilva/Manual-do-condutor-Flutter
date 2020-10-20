import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Legislação de trânsito',
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guia do futuro',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            //fontFamily: 'ArchitectsDaughter',
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 1.4,
                color: Colors.yellow[700],
                child: Center(
                  child: Text(
                    'CONDUTOR',
                    style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Anton-Regular',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: ListView(
                    children: [
                      InkWell(
                        child: textItem('Legislação de Trânsito'),
                        onTap: () {},
                      ),
                      Divider(height: 18),
                      InkWell(
                        child: textItem('Direção Defensiva'),
                        onTap: () {},
                      ),
                      Divider(height: 18),
                      InkWell(
                        child: textItem('Mecânica Básica'),
                        onTap: () {},
                      ),
                      Divider(height: 18),
                      InkWell(
                        child: textItem('Meio Ambiente e Cidadania'),
                        onTap: () {},
                      ),
                      Divider(height: 18),
                      InkWell(
                        child: textItem('Primeiros Socorros'),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.2,
                  padding: EdgeInsets.all(16),
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    margin: EdgeInsets.all(16),
                    color: Colors.green[800],
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Center(
                        child: Text(
                          'Atualizado com a Lei 13.804, de 10 de janeiro/2019, que instituiu importantes mudanças no CTB (Código de Trânsito Brasileiro), prevendo a suspensão do direito de dirigir e a cassação da CNH do agente, quando for comprovada a utilização de veículo para fins da prática de contrabando, receptação e descaminho',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textItem(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          fontFamily: 'ArchitectsDaughter',
        ),
      ),
      Icon(Icons.arrow_forward_ios, size: 20),
    ],
  );
}
