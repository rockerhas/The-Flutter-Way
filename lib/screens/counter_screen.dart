import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return buildMainWidget();
  }

  Material buildMainWidget() {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: const Text("Counter App")),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("You have pushed the button this many time"),
              const SizedBox(height: 10),
              Text(counter.toString()),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Text(" + ")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  child: const Text("Reset Counter")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: const Text(" - "))
            ],
          ),
        ),
      ),
    );
  }
}
