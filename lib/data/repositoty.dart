
import 'dart:async';

import 'package:booksy/data/books_service.dart';
import 'package:booksy/models/books_api_model.dart';
import 'package:booksy/models/result.dart';

class Repository {
  final BooksService _booksService;

  Repository(this._booksService) : assert(_booksService != null);

  Future<Result<List<Book>, String>> getBooks(String query) async {
    return _booksService.getBooks(query);
  }
}