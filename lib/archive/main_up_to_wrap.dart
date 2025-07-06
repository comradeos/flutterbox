import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String myString = 'Iaroslav';
int myInt = 25;
double myDouble = 25.01;
List myList = ['hello', 'world'];
Map<String, String> myMap = {'my': 'map', 'my2': 'map2'};

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
          // brightness: Brightness.light,
        ),
      ),
      home: const MyHomePage(title: 'my phone app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        // top panel
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Icon(Icons.notification_add, color: Colors.white60),
      ),

      body: Center(
        // container in the center of the screen
        child: Container(
          // container with red background and row
          width: double.infinity,
          // height: 0.5 * MediaQuery.of(context).size.height, // half height of the screen
          decoration: BoxDecoration(
            color: const Color.fromARGB(28, 244, 67, 54),
            borderRadius: BorderRadius.circular(16.5), // rounded corners
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                tileColor: const Color.fromARGB(255, 255, 196, 0),
                leading: Icon(Icons.join_full, color: Colors.black),
                title: Text(
                  'List Tile Text',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'Trailing Text',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  print(this.widget.title);
                },
              ),

              Row(
                // row with tree containers inside
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,

                children: [
                  // two containers + image
                  // первый синий
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16.5),
                    ),
                    child: Text('data', style: TextStyle(color: Colors.white)),
                  ),

                  // второй зеленый
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16.5),
                    ),
                    child: Text('green', style: TextStyle(color: Colors.white)),
                  ),

                  // yellow
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(16.5),
                    ),
                    child: Text(
                      'yellow',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),

              Row(
                // row with two containers inside
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    'https://512pixels.net/wp-content/uploads/2025/06/13-Ventura-Dark-thumb.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),

                  // для того что бы сработала папка assets/images/ нужно править pubspec.yaml
                  Image.asset(
                    'assets/images/bg1.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      alignment:
                          Alignment.center, // центрирует все дочерние элементы
                      children: [
                        Image.asset(
                          'assets/images/bg2.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text('AAAAAA', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),

              Wrap(
                children: [
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
