import 'package:flutter/material.dart';

// Состояние приложения
class Person {
  final ValueNotifier<int> age;
  final ValueNotifier<String> name;

  Person({
    int initialAge = 0,
    String initialName = 'John',
  }) :
  age = ValueNotifier<int>(initialAge),
  name = ValueNotifier<String>(initialName);
}

class AppState {
  static final ValueNotifier<int> navigationIndex = ValueNotifier<int>(0);
  static final ValueNotifier<String> anotherValue = ValueNotifier<String>('Hello');
  static final ValueNotifier<Person> person = ValueNotifier<Person>(Person());
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
// Виджет для подписки на изменения ValueNotifier