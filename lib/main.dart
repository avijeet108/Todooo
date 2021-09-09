import 'package:flutter/material.dart';
import 'package:todooo/models/task_data.dart';
import 'package:todooo/screens/TaskScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: TasksScreen(),
        ),
    );
  }
}
