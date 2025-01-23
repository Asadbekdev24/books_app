
import 'package:books_app/model/book_model.dart';
import 'package:books_app/viewmodel/services/book_repository.dart';
import 'package:flutter/material.dart';

class BookProvider  extends ChangeNotifier{

  final BookRepository bookRepository;

  BookProvider({required this.bookRepository});


  bool isloading=false;

  List<BookModel> books=[];

  Future<void> getData() async{

  isloading=true;
  notifyListeners();
   final data= await bookRepository.getBooks();
   books=data;
   
   isloading=false;
   notifyListeners();

  }
}