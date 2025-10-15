import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Role"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/customer/home");
              },
              child: const Text("Customer"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/business/home");
              },
              child: const Text("Business"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/admin/home");
              },
              child: const Text("Admin"),
            ),
          ],
        ),
      ),
    );
  }
}
