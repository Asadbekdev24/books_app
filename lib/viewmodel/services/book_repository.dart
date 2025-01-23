
import 'dart:convert';

import 'package:books_app/model/book_model.dart';
import 'package:http/http.dart' as http;
class BookRepository {

  Future<List<BookModel>> getBooks() async{

  final jsonUrl="https://library-api.postmanlabs.com/books";
  final url = Uri.parse(jsonUrl);



  try{

    final response = await http.get(url);

    if(response.statusCode==200)
  {
    final data = jsonDecode(response.body);

    return data.map((e)=>BookModel.fromJson(e)).toList();
  }

  throw Exception("xatolik");

  } catch(e)
  {
    throw Exception(e);
  }

  }
}