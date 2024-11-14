import 'package:e_commerce/providers/user%20provider.dart';
import 'package:e_commerce/screens/signup%20page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<>(create: (context)=>userprovider())

      ],
      child: MaterialApp(

        home: signuppage(),
      ),
    );
  }
}

