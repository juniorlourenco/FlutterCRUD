import 'package:flutter/material.dart';
import 'package:FirstProject/components/user_tile.dart';
import 'package:FirstProject/provider/users.dart';
import 'package:provider/provider.dart';
import 'package:FirstProject/models/user.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              users.put(User(
                  name: 'Teste', email: 'aluno@junior.com.br', avatarUrl: ''));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIdex(i)),
      ),
    );
  }
}
