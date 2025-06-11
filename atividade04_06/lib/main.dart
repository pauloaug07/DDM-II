import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        
        // Mudei a cor do app para azul
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 108, 183)),
      ),
      home: const MyHomePage(title: 'Exercício de Flutter - DDMII'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // NOVA FUNCAO - Subtrair numero da contagem
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você já apertou esse botão esse tanto de vezes:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      
      // BOTOES PARA POSICIONAMENTO PERSONALIZADO
      floatingActionButton: Stack(
        children: <Widget>[
          // Botão de decrementar no canto inferior esquerdo
          Positioned(
            left: 30,
            bottom: 10,
            child: FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
            ),
          ),
          
          // Botão de incrementar no canto inferior direito (padrão)
          Positioned(
            right: 10,
            bottom: 10,
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
