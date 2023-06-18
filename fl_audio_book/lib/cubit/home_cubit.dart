import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fl_audio_book/cubit/home_state.dart';

import 'package:fl_audio_book/service/home_service.dart';

class HomeCubit extends Cubit<HomeState> {
  final BookService bookService;

  HomeCubit(this.bookService)
      : super(const HomeState(status: FetchStatus.loading)) {
    //fetchBooks();
  }

  Future<void> fetchBooks() async {
    try {
      final popularList = await bookService.getPopularBooks();
      // final recommendedList = await bookService.getRecommendedBooks();
      // final newReleaseList = await bookService.getNewReleaseBooks();
      // final categoryList = await bookService.getCategoryBooks();

      emit(HomeState(
        status: FetchStatus.success,
        popularList: popularList,
        // recommendedList: recommendedList,
        // newReleaseList: newReleaseList,
        // categoryList: categoryList,
      ));
    } catch (e) {
      emit(const HomeState(status: FetchStatus.error));
    }
  }
}
