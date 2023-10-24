import 'package:bloc/bloc.dart';
import 'package:booking_app/features/search/presentaion/Manager/searchCubit/searchStates.dart';
import '../../../../home/data/repos/homeRepo.dart';



class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSearchBooks({required String category}) async {

    emit(SearchBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((errMessage) {
      emit(SearchBooksFailure(errMessage as String));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}