import 'package:booksy/models/books_api_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookWidget extends StatelessWidget {

  final Book book;
  VolumeInfo get _bookInfo => book.volumeInfo;

  final String imageUrl = "https://images.unsplash.com/photo-1535498730771-e735b998cd64?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80";

  const BookWidget({
    Key key,
    @required this.book
  }) : assert(book != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.all(
                  Radius.circular(12)
                  ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(_bookInfo.imageLinks.smallThumbnail)
                )
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 220,
              height: 200,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(_bookInfo.title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(_bookInfo.authors[0],
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                      child: Icon(Icons.arrow_forward_ios, color: Colors.grey,),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
