import 'package:flutter/material.dart';
import '../api/UserAPIService.dart';
import '../model/User.dart';
import '../view/AddUserScreen.dart';
import '../view/EditUserScreen.dart';
import '../view/UserListItem.dart';

class UserListScreen extends StatefulWidget {
  final VoidCallback onLogout;  // Callback để đăng xuất

  const UserListScreen({required this.onLogout, Key? key}) : super(key: key);

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  late Future<List<User>> _usersFuture;

  @override
  void initState() {
    super.initState();
    _refreshUsers();
  }

  Future<void> _refreshUsers() async {
    setState(() {
      _usersFuture = UserAPIService.instance.getAllUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách người dùng'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshUsers,
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: widget.onLogout,  // Thêm nút đăng xuất
          ),
        ],
      ),
      body: FutureBuilder<List<User>>(
        future: _usersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Đã xảy ra lỗi: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('Không có người dùng nào'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final user = snapshot.data![index];
                return UserListItem(
                  user: user,
                  onDelete: () async {
                    try {
                      await UserAPIService.instance.deleteUser(user.id!);
                      _refreshUsers();
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Xóa thất bại: $e')),
                      );
                    }
                  },
                  onEdit: () async {
                    final updated = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditUserScreen(user: user),
                      ),
                    );
                    if (updated == true) {
                      _refreshUsers();
                    }
                  },
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final created = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddUserScreen(),
            ),
          );
          if (created == true) {
            _refreshUsers();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}