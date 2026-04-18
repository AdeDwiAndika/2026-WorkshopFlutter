import 'package:flutter/material.dart';
import 'package:flutter_app_2/core/constans/app_colors.dart';

class GanjilGenap extends StatefulWidget {
  const GanjilGenap({super.key});

  @override
  State<GanjilGenap> createState() => _GanjilGenapState();
}

class _GanjilGenapState extends State<GanjilGenap> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text('Ganjil Genap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add, color: AppColors.white,),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
