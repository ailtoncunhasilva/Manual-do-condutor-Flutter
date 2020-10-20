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
          'Guia do futuro condutor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                child: ListView(
                  children: [
                    textItem('Legislação de Trânsito'),
                    Divider(height: 18),
                    textItem('Direção Defensiva'),
                    Divider(height: 18),
                    textItem('Mecânica Básica'),
                    Divider(height: 18),
                    textItem('Meio Ambiente e Cidadania'),
                    Divider(height: 18),
                    textItem('Primeiros Socorros'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Card(
                  child: Text('texto ainda a digitar'),
                ),
              ),
            ),
          ],
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
        ),
      ),
      Icon(Icons.arrow_forward_ios, size: 20),
    ],
  );
}
