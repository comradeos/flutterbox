import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Точка входа: запускаем приложение
}

// Stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Основной виджет приложения
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Убираем баннер "Debug"
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      // Главная страница приложения
      home: Scaffold(
        // Верхняя панель (AppBar)
        appBar: AppBar(
          title: Container(
            height: 25,
            child: Text('Flutter Mapp', style: TextStyle(color: Colors.red)),
          ),
          centerTitle: true, // Центрируем заголовок
          // backgroundColor: Colors.teal, // Можно задать цвет фона AppBar
        ),

        // Нижняя панель навигации (NavigationBar)
        bottomNavigationBar: NavigationBar(
          destinations: [
            // Первый пункт меню — "Home"
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            // Второй пункт меню — "Profile"
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedIndex: 0, // Индекс выбранной вкладки
          onDestinationSelected: (value) {
            // Обработка выбора вкладки
            print(value);
          },
        ),
      ),
    );
  }
}
