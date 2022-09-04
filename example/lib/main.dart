import 'package:flutter/material.dart';
import 'package:responsive_screen_builder/responsive_screen_builder.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return ResponsiveScreenBuilder(builder: (context, screenInformation) {
      // screenInformation.deviceType;
      // screenInformation.screenSize;
      // screenInformation.localWidgetSize;
      // screenInformation.orientation;
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(screenInformation.toString()),
          ),
        ),
      );
    });
  }
}
