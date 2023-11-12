import 'package:flutter/material.dart';

class TipCalculatorScreen extends StatefulWidget {
  const TipCalculatorScreen({super.key});

  @override
  State<TipCalculatorScreen> createState() => _TipCalculatorScreenState();
}

class _TipCalculatorScreenState extends State<TipCalculatorScreen> {
  var tip = 0.00;
  var total = 0.00;
  var sliderValue = 0.0;
  var tipTextFieldState = "0.0";

  @override
  Widget build(BuildContext context) {
    return _buildTipCalculateScreen(context);
  }

  Widget _buildTipCalculateScreen(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: const Text("Tip Calculator")),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Enter bill amount:"),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) => setState(() {
                          tipTextFieldState = value;
                          calculateTip();
                        })),
              ),
              const SizedBox(height: 10),
              const Text("Select tip percentage"),
              const SizedBox(height: 10),
              Slider(
                  value: sliderValue,
                  label: sliderValue.round().toString(),
                  divisions: 11,
                  min: 0.0,
                  max: 30.0,
                  onChanged: (value) => setState(() {
                        sliderValue = value;
                        calculateTip();
                      })),
              const SizedBox(height: 10),
              Text("Tip PKR: ${tip.toStringAsFixed(2)}"),
              Text("Total PKR: ${total.toStringAsFixed(2)}")
            ],
          ),
        ),
      ),
    );
  }

  void calculateTip() {
    if (tipTextFieldState.isNotEmpty) {
      var amount = double.parse(tipTextFieldState);
      if (amount > 0) {
        tip = (amount * sliderValue) / 100;
        total = amount + tip;
      } else {
        emptyTipTotal();
      }
    } else {
      emptyTipTotal();
    }
  }

  void emptyTipTotal() {
    total = 0.0;
    tip = 0.0;
  }
}
