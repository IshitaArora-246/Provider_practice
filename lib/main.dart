import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/tasks.dart';
import 'package:provider_example/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tasks>(
        create: (context) => Tasks(),
        builder: (context, snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomePage(),
          );
        });
  }
}
