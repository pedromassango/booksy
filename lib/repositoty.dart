
import 'dart:async';

import 'package:booksy/home/bloc/home_page_state.dart';
import 'package:booksy/models.dart';

import 'package:http/http.dart' as http;

import 'dart:convert' as converter;

class Repository{

  final String baseUrl = "https://www.googleapis.com/books/v1/volumes";

  Future<HomePageState> getBooks(String query) async{

    try {
      final url = "$baseUrl?q=$query";
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var body = response.body;
        var json = converter.jsonDecode(body);
        var data = BooksApiModel.fromJson(json);

        var books = data.items;

        return HomePageStateSuccess(
            books: books
        );
      } else {
        return HomePageStateError(
            message: "Internet Error!"
        );
      }
    }catch(e) {
      print(e);
      return HomePageStateError(
        message: 'Unknown error'
      );
    }
  }
}