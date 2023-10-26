import 'package:api_test/models/user_model.dart';
import 'package:api_test/pages/widgets/user_card.dart';
import 'package:flutter/material.dart';

///  User List
class UserList extends StatelessWidget {
  ///  Constructor
  const UserList({super.key, required this.userModelList});

  ///  Constructor
  final List<UserModel> userModelList;

  @override
  Widget build(BuildContext context) => userModelList.isEmpty
      ? const Center(
          child: CircularProgressIndicator(),
        )
      : ListView.builder(
          itemCount: userModelList.length,
          itemBuilder: (context, index) => UserCard(user: userModelList[index]),
        );
}
