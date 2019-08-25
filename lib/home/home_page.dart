import 'package:booksy/home/bloc/home_page_event.dart';
import 'package:booksy/home/bloc/home_page_state.dart';
import 'package:booksy/home/bloc/home_page_bloc.dart';
import 'package:booksy/repositoty.dart';
import 'package:booksy/widgets/book_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageBloc _bloc;

  List<String> categorias = [
    "Android", "Java", "História", "Ciências", "Myths", "Typograpyh"
  ];

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

    _bloc = HomePageBloc(repository: Repository());

    _bloc.dispatch(HomePageEventSearch(
      query: categorias[0]
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 42, left: 24),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      right: 24
                  ),
                  child: Text("Browse",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text("Recommended",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categorias.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext c, int index){
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 6, right: 6
                    ),
                    child: GestureDetector(
                      onTap: (){
                        _selectedIndex = index;
                        setState((){});
                      },
                      child: Chip(
                        padding: EdgeInsets.only(
                            left: 8, right: 8
                        ),
                        backgroundColor: index == _selectedIndex ? Colors.blue : Colors.grey[200],
                        label: Text(categorias.elementAt(index),
                          style: TextStyle(
                              color: index == _selectedIndex ? Colors.white : Colors.grey[500]
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            BlocBuilder<HomePageEvent, HomePageState>(
              bloc: _bloc,
              builder: (context, state) {

                if(state is HomePageStateLoading)
                  return Center(child: CircularProgressIndicator());

                if(state is HomePageStateError)
                  return Center(child: Text(state.message));

                if(state is HomePageStateSuccess) {
                  final books = state.books;
                  //TODO: terminar implementação do item de livro.
                  return Expanded(
                    child: Container(
                      child: ListView.builder(
                        itemCount: books.length,
                        itemBuilder: (context, index){
                          return BookWidget();
                        },
                      ),
                    ),
                  );
                }

                return SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
