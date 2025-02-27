import 'package:flutter/material.dart';

void main() {
  runApp(const IncrementApp());
}

class IncrementApp extends StatelessWidget {
  const IncrementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const IncrementHomePage(title: 'Инкремент'),
    );
  }
}

class IncrementHomePage extends StatefulWidget {
  const IncrementHomePage({super.key, required this.title});

  final String title;

  @override
  State<IncrementHomePage> createState() => _IncrementHomePageState();
}

class _IncrementHomePageState extends State<IncrementHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Значение инкремента:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Уменьшить',
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Увеличить',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: _resetCounter,
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
              child: const Text('Сбросить'),
            ),
          ],
        ),
      ),
    );
  }
}
