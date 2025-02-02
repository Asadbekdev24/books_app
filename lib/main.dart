// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:books_app/viewmodel/providers/book_provider.dart';
import 'package:books_app/viewmodel/services/book_repository.dart';
import 'package:flutter/material.dart';

import 'package:books_app/presentation/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:  (context) =>  BookProvider(bookRepository: BookRepository())..getData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
