import 'package:booksy/data/books_service.dart';
import 'package:booksy/data/repositoty.dart';
import 'package:booksy/home/bloc/home_page_bloc.dart';
import 'package:booksy/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  HomePageBloc _homePageBloc;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

    final _booksService = BooksService();
    final _repository = Repository(_booksService);

    _homePageBloc = HomePageBloc(repository: _repository);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageBloc>(
      builder: (_) => _homePageBloc,
      child: MaterialApp(
        title: 'Booksy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

