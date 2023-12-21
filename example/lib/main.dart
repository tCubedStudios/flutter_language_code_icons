import 'package:example/LanguageCodeWidget.dart';
import 'package:flutter/material.dart';
import 'package:language_code_icons/language_code_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Language Code Icons'),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
            widget.title,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255)
            ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4
            ),
            children: const [
              LanguageCodeWidget(LanguageCodeIcons.EN, "0xe838"),
              LanguageCodeWidget(LanguageCodeIcons.EN_SOLID, "0xe938"),
              LanguageCodeWidget(LanguageCodeIcons.ES, "0xe840"),
              LanguageCodeWidget(LanguageCodeIcons.ES_SOLID, "0xe940")
            ]
        ),
      )
    );
  }
}
