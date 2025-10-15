import 'package:flutter/material.dart';
import 'package:huduma360/providers/auth_provider.dart';
import 'package:huduma360/screens/auth/role_selection_screen.dart';
import 'package:huduma360/screens/customer/customer_home_screen.dart';
import 'package:huduma360/screens/business/business_home_screen.dart';
import 'package:huduma360/screens/admin/admin_home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Huduma360App());
}

class Huduma360App extends StatelessWidget {
  const Huduma360App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Huduma360',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const RoleSelectionScreen(),
          '/customer/home': (context) => const CustomerHomeScreen(),
          '/business/home': (context) => const BusinessHomeScreen(),
          '/admin/home': (context) => const AdminHomeScreen(),
        },
      ),
    );
  }
}