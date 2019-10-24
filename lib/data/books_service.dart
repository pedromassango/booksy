
import 'package:booksy/models/books_api_model.dart';
import 'package:booksy/models/result.dart';
import 'dart:convert' as converter;
import 'package:http/http.dart' as http;

class BooksService {

  final String baseUrl = "https://www.googleapis.com/books/v1/volumes";

  Future<Result<List<Book>, String>> getBooks(String query) async {

    try {
      final url = "$baseUrl?q=$query";
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var body = response.body;
        var json = converter.jsonDecode(body);
        var data = BooksApiModel.fromJson(json);

        var books = data.items;

        return Result.success(books);
      } else {
        return Result.error('Internet Error!');
      }
    }catch(e) {
      print(e);
      return Result.error('Unknown error');
    }
  }
}