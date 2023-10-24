
import '../../../../home/data/models/BookModel.dart';

abstract class SearchBooksState {
  const SearchBooksState();

}

class SearchBooksInitial extends SearchBooksState {}

class SearchBooksFailure extends SearchBooksState {
  final String errMessage;

  const SearchBooksFailure(this.errMessage);
}

class SearchBooksSuccess extends SearchBooksState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);
}

class SearchBooksLoading extends SearchBooksState {}