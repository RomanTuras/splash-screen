import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logging/logging.dart';

void main() {
  Logger.root.level = Level.ALL;
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  init();
  runApp(const MyApp());
}

void init() async {
  final log = Logger('Main');
  log.fine('Splash starting...');
  await Future.delayed(const Duration(seconds: 3));
  log.fine('Splash ended...');
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Demo',
      color: Color(0xFF003261),
      home: Scaffold(
        body: HomePage(greeting: '_hello morda!'),
        backgroundColor: Color(0xFF003261),
      ),
      // home: const HomePage(greeting: '_hello morda!'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String greeting;
  const HomePage({super.key, required this.greeting});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        greeting,
        style: TextStyle(color: Color(0xFF4CD1FE), fontSize: 30.0),
      ),
    );
  }
}
