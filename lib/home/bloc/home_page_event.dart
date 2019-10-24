import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class HomePageEvent extends Equatable {
  HomePageEvent([List tmp = const []]): super(tmp);
}

class HomePageSearchEvent extends HomePageEvent{
  final String category;
  HomePageSearchEvent({
    @required this.category
  });

  @override
  String toString() => "HomePageEventSearch";
}