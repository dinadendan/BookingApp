import '../../../data/models/BookModel.dart';

abstract class NewestBooksState {
  const NewestBooksState();
}

class NewestBookInitial extends NewestBooksState {}

class NewestBookLoading extends NewestBooksState {}

class NewestBookFailure extends NewestBooksState {
  final String errMessage;

  NewestBookFailure(this.errMessage);
}

class NewestBookSuccess extends NewestBooksState {
  final List<BookModel> books;

  NewestBookSuccess(this.books);
}