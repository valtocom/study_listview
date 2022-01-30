import 'package:flutter/material.dart';
import 'package:study_listview/user_class.dart';
import 'package:study_listview/user_screen.dart';


  class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final List<User> users = [
    User("Иван", "+78008765432"),
    User("Максим", "+79008765443"),
    User("Анна", "+79818769654"),
    User("Евгений", "+79012345432"),
    User("Олег", "+79038567832"),
    User("Степан", "+79100987432"),
    User("Ирина", "+79568765098"),
    User("Алла", "+79158765432567"),
    User("Денис", "+79218765432"),
    User("Ольга", "+79877765432"),
  ];

  return Scaffold(
    appBar: AppBar(
      title: Text('Телефонная книга'),
    ),
      body: UserListBuilder(users: users));
  }
  }

  class UserListItem extends StatelessWidget {
  const UserListItem({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
  return ListTile(
  title: Text(user.name + ', ' + user.phone),
  onTap: () {
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => UserScreen(
  user: user,
  )),
  );
  },
  );
  }
  }

class UserListBuilder extends StatelessWidget {
  UserListBuilder({Key? key, required this.users}) : super(key: key);

  List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return UserListItem(user: users[index]);
        });
  }
}

