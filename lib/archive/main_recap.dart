import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Точка входа: запускаем приложение
}

// stateful - can refresh 
// stateless - cant refresh 
// setstate - refresh screen now

String title = 'Flutter Mapp'; // Заголовок приложения

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
      home: MyHomePage(), // Используем StatefulWidget для главной страницы
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0; // Индекс текущей вкладки

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Верхняя панель (AppBar)
        appBar: AppBar(
          title: Container(
            height: 25,
            child: Text(title, style: TextStyle(color: Colors.red)),
          ),
          centerTitle: true, // Центрируем заголовок
          // backgroundColor: Colors.teal, // Можно задать цвет фона AppBar
        ),
        
        body: selectedText(),
        
        
        
        // Нижняя панель навигации (NavigationBar)
        bottomNavigationBar: NavigationBar(
          destinations: [
            // Первый пункт меню — "Home"
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            // Второй пункт меню — "Profile"
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedIndex: currentIndex, // Индекс выбранной вкладки
          onDestinationSelected: (value) {
            // Обработка выбора вкладки
            print(value);
            setState(() {
              currentIndex = value; // Обновляем индекс текущей вкладки
            });
          },
        ),
      );
  }

  Text selectedText() {
    String result = '';

    if (currentIndex == 0) {
      result += 'HOME ';
    } else if (currentIndex == 1) {
      result += 'PROFILE ';
    } else {
      result += 'UNKNOWN ELEMENT ';
    } 

    result += 'Selected';

    return Text(result);
  } 
}