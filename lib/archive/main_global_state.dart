import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

/// Глобальное состояние + логика
class AppState {
  static final ValueNotifier<int> counter = ValueNotifier<int>(0);

  /// Метод увеличения счётчика
  static void increment() {
    counter.value++;
  }

  /// Метод сброса
  static void reset() {
    counter.value = 0;
  }

  static final ValueNotifier<String> userName = ValueNotifier<String>('Guest');

  static void generateUserName() {
    final id = DateTime.now().millisecondsSinceEpoch % 10000;
    userName.value = 'User${id.toString().padLeft(4, '0')}';
  }

  static void resetUserName() {
    userName.value = 'Guest';
  }

  static final ValueNotifier<ThemeData> theme = ValueNotifier<ThemeData>(
    ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade100),
      useMaterial3: true,
    ),
  );

  static void regenerateTheme() {
    final colors = [
      Colors.teal,
      Colors.indigo,
      Colors.deepOrange,
      Colors.green,
      Colors.purple,
      Colors.cyan,
      Colors.amber,
    ];
    final random = Random();
    final newColor = colors[random.nextInt(colors.length)];

    theme.value = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: newColor),
      useMaterial3: true,
    );
  }
}

// Виджет для подписки на изменения ValueNotifier
class WatchValue<T> extends StatelessWidget {
  final ValueNotifier<T> listenable;
  final Widget Function(T value) builder;

  const WatchValue({
    super.key,
    required this.listenable,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<T>(
      valueListenable: listenable,
      builder: (context, value, _) => builder(value),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
      return ValueListenableBuilder<ThemeData>(
        valueListenable: AppState.theme,
        builder: (context, theme, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Global State with Logic',
            theme: theme,
            home: const HomePage(),
          );
        },
      );
    }
  }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Global State + Logic')),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WatchValue<int>(
              listenable: AppState.counter,
              builder: (value) => Text('Counter: $value', style: const TextStyle(fontSize: 32)),
            ),
            WatchValue<String>(
              listenable: AppState.userName,
              builder: (value) => Text('User: $value', style: const TextStyle(fontSize: 32)),
            ),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              AppState.increment();
              AppState.regenerateTheme();
              AppState.generateUserName();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              AppState.reset();
              AppState.resetUserName();
            },
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}