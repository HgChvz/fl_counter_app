
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    TextStyle fontSize25 = const TextStyle(fontSize: 25.0);
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
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
      floatingActionButton:  FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print(counter);
        },
      ),
    );
  }

}