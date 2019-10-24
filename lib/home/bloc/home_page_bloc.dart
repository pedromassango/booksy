import 'package:bloc/bloc.dart';
import 'package:booksy/data/repositoty.dart';
import 'package:booksy/home/bloc/home_page_event.dart';
import 'package:booksy/home/bloc/home_page_state.dart';
import 'package:booksy/models/result.dart';
import 'package:meta/meta.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState>{

  final Repository repository;

  HomePageBloc({
    @required this.repository
  }) : assert(repository != null);

  HomePageState _state = HomePageState.initial();

  @override
  HomePageState get initialState => HomePageState.initial();

  @override
  Stream<HomePageState> mapEventToState(HomePageEvent event) async* {
    if(event is HomePageSearchEvent) {
      _state = _state.copy(
          category: event.category,
          books: Result.loading());
      yield _state;

      var query = event.category;
      var booksResult = await repository.getBooks(query);

      _state = _state.copy(books: booksResult);
      yield _state;
    }
  }
}