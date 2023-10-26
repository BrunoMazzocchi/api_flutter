import 'package:api_test/models/user_model.dart';
import 'package:flutter/material.dart';

/// User Card
class UserCard extends StatelessWidget {
  ///  Constructor
  const UserCard({super.key, required this.user});

  ///  Constructor
  final UserModel user;

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(user.id.toString()),
                Text(user.username),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(user.email),
                Text(user.website),
              ],
            ),
          ],
        ),
      );
}
