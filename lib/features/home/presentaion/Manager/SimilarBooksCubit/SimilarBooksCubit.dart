import 'package:bloc/bloc.dart';
import '../../../data/repos/homeRepo.dart';
import 'SimilarBooksStates.dart';


class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {

    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((errMessage) {
      emit(SimilarBooksFailure(errMessage as String));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}