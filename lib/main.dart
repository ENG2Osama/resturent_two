import 'package:flutter/material.dart';

import 'screens/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تطبيق المطعم',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Cairo', // يمكنك إضافة خط عربي إذا أردت
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ProductsScreen(),
      },
    );
  }
}