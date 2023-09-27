import 'package:api_test/models/user_model.dart';
import 'package:api_test/pages/widgets/user_card.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  final List<UserModel> userModelList;

  const UserList({super.key, required this.userModelList});

  @override
  Widget build(BuildContext context) {
    return userModelList.isEmpty
        ? const Center(
      child: CircularProgressIndicator(),
    )
        : ListView.builder(
      itemCount: userModelList.length,
      itemBuilder: (context, index) {
        return UserCard(user: userModelList[index]);
      },
    );
  }
}

