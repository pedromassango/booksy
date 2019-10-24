import 'package:booksy/models/books_api_model.dart';
import 'package:booksy/models/result.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class HomePageState extends Equatable {

  final String category;
  final Result<List<Book>, String> books;

  HomePageState({
    @required this.books,
    @required this.category
  }) : super([books, category]);

  factory HomePageState.initial() {
    return HomePageState(
      books: Result.idle(data: []),
      category: ''
    );
  }

  HomePageState copy({
    String category,
    Result<List<Book>, String> books}) {
    return HomePageState(
      category: category ?? this.category,
      books: books ?? this.books
    );
  }
}
