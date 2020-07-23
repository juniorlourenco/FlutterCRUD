import 'package:FirstProject/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:FirstProject/provider/users.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (ctx) => Users(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: UserList(),
        ));
  }
}
