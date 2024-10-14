import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Alignment Example",
      home: AlignmentScenario(),
    );
  }
}

class AlignmentScenario extends StatelessWidget {
  const AlignmentScenario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Alignment Types",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.orange,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBlock(Colors.red, "Start/Start"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBlock(Colors.green, "Center/Start"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBlock(Colors.blue, "End/Start"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildBlock(Colors.orange, "Start/Center"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildBlock(Colors.purple, "Center/Center"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildBlock(Colors.brown, "End/Center"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildBlock(Colors.pink, "Start/End"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildBlock(Colors.yellow, "Center/End"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildBlock(Colors.teal, "End/End"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBlock(Color color, String text) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      margin: const EdgeInsets.all(4.0),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
