// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:patrol_example/state.dart';

void main() {
  runApp(const MyApp());
}

class ElementA extends StatelessWidget {
  ElementA() : super(key: Keys.elementA);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Element A',
        ),
        SizedBox(height: 24)
      ],
    );
  }
}

class ElementB extends StatelessWidget {
  ElementB() : super(key: Keys.elementB);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Element B',
        ),
        SizedBox(height: 48)
      ],
    );
  }
}

class Keys {
  static const elementA = Key('elementA');
  static const elementB = Key('elementB');
  static const center = Key('center');
  static const button = Key('button');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patrol Bug finder example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  late final MyState state;

  MyHomePage({
    super.key,
  }) {
    state = MyState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bug finder example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _result(),
            const SizedBox(height: 16),
            OutlinedButton(
                key: Keys.button,
                onPressed: state.toggleElementA,
                child: const Text('Toggle Elements')),
          ],
        ),
      ),
    );
  }

  Widget _result() {
    return Observer(builder: (context) {
      return state.showElementA ? ElementA() : ElementB();
    });
  }
}
