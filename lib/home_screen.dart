import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter=Provider.of<CounterProvider>(context);
    final count=counter.countVal;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Counter App Provider'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text('Value ${count.toString()}'),
            SizedBox(height: 60),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              onPressed: () {
                counter.add();
              },
              child: Icon(Icons.add)),
          SizedBox(width: 80),
          FloatingActionButton(
            onPressed: () {
              counter.subtract();
            },
            child: Icon(Icons.remove),
          )
        ],
      )
          ],
        ),
      ),
    );
  }
}
