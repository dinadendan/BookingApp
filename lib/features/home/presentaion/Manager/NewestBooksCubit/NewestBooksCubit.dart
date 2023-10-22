import 'package:booking_app/features/home/data/repos/homeRepo.dart';
import 'package:bloc/bloc.dart';
import 'NewestBooksStates.dart';



class NewestBooksCubit extends Cubit<NewestBooksState>{
  NewestBooksCubit(this.homeRepo) : super(NewestBookInitial());

  final HomeRepo homeRepo ;

  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());

    var result = await homeRepo.fetchNewestBooks();
    result.fold((errMessage) {
      emit(NewestBookFailure(errMessage.toString()));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}