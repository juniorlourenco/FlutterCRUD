import 'package:FirstProject/data/dummy_users.dart';
import 'package:flutter/material.dart';
import 'package:FirstProject/models/user.dart';
import 'dart:math';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIdex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    final id = Random().nextDouble().toString();
    _items.putIfAbsent(
        id,
        () => User(
              id: id,
              name: user.name,
              email: user.email,
              avatarUrl: user.avatarUrl,
            ));
    //adicionar ou alterar

    //notifyListeners();
  }
}
