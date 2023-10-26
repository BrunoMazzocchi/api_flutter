import 'package:api_test/api_services/api_service.dart';
import 'package:api_test/models/user_model.dart';
import 'package:api_test/pages/widgets/user_list.dart';
import 'package:flutter/material.dart';

///  Home Screen
class HomeScreen extends StatefulWidget {
  /// Constructor
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<UserModel>?> users;

  @override
  Future<void> initState() async {
    super.initState();
    users = ApiService().getUsers();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: users,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final users = snapshot.data as List<UserModel>;

            if (users.isEmpty) {
              return const Center(
                child: Text('No users found'),
              );
            }

            return UserList(userModelList: users);
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );
}
