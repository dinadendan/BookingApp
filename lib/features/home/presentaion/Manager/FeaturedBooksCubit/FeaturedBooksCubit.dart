import 'package:booking_app/features/home/data/repos/homeRepo.dart';
import 'package:booking_app/features/home/presentaion/Manager/FeaturedBooksCubit/FeaturedBooksStates.dart';
import 'package:bloc/bloc.dart';



class FeaturedBooksCubit extends Cubit<FeaturedBooksState>{
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo ;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((errMessage) {
      emit(FeaturedBooksFailure(errMessage.toString()));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}