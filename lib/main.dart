import 'package:flutter/material.dart';
import 'package:pandas_pet_shop_mobile/menu.dart';
import 'package:pandas_pet_shop_mobile/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
      CookieRequest request = CookieRequest();
      return request;
    },
    child:  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 245, 222, 179),
            secondary: Colors.deepOrange[400]),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    ),
    );
  }
}
