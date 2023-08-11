import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
            Consumer<CounterProvider>(builder: (context, value, child) {
              return Text('Value ${value.countVal.toString()}');
            }),
            SizedBox(height: 60),
            Consumer<CounterProvider>(builder: (context, value, child) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      onPressed: () {
                        value.add();
                      },
                      child: Icon(Icons.add)),
                  SizedBox(width: 80),
                  FloatingActionButton(
                    onPressed: () {
                      value.subtract();
                    },
                    child: Icon(Icons.remove),
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
