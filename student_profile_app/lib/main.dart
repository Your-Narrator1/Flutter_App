import 'package:flutter/material.dart';

void main() => runApp(const SimpleApp());

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorSwitcherScreen(),
    );
  }
}

class ColorSwitcherScreen extends StatefulWidget {
  const ColorSwitcherScreen({super.key});

  @override
  State<ColorSwitcherScreen> createState() => _ColorSwitcherScreenState();
}

class _ColorSwitcherScreenState extends State<ColorSwitcherScreen> {
  // Step A: Variables to hold state
  int _counter = 0;
  
  final List<String> _messages = [
    'Welcome to Flutter!',
    'Flutter builds native apps.',
    'You just triggered a state change!',
  ];

  final List<Color> _cardColors = [
    Colors.indigoAccent,
    Colors.teal,
    Colors.deepOrange,
  ];

  // Step B: Function to cycle through items
  void _changeCard() {
    setState(() {
      _counter = (_counter + 1) % _messages.length;
    });
  }   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Switcher'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display Card
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: _cardColors[_counter],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  _messages[_counter],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 85, 7, 7),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Action Button
              ElevatedButton.icon(
                onPressed: _changeCard,
                icon: const Icon(Icons.refresh),
                label: const Text('Change Card'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}