import 'package:flutter/material.dart';
import 'package:study_listview/user_class.dart';


class UserScreen extends StatelessWidget {
  const UserScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                "Телефон: ${user.phone}",
                style: const TextStyle(fontSize: 18),
              ),
            ),

          ],
        ),
      ),
    );
  }
}