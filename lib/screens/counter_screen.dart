
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
   
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void zero() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize25 = const TextStyle(fontSize: 25.0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Clicks counter', style: fontSize25),
              Text('$counter', style: fontSize25)
            ]
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        zeroFn: zero,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  
  final Function increaseFn, decreaseFn, zeroFn;
  
  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.zeroFn,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          //onPressed: () => setState(() => counter-- ), Como es un StatelessWidget, no serviria el setState en los FloatingActionButtons
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero_outlined),
          //onPressed: () => setState(() => counter = 0 ),
          onPressed: () => zeroFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          //onPressed: () => setState(() => counter++ ),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}