// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repo/home_detail_repo.dart';

part 'home_images_list_state.dart';

class HomeImagesListCubit extends Cubit<HomeImagesListState> {
  HomeImagesListCubit(
    this.homeRepo,
  ) : super(HomeImagesListInitial());

  final HomeDetailRepo homeRepo;

  Future<void> fetchImageBook() async {
    emit(HomeImagesListLoading());
    var data = await homeRepo.fetchImageBooks();

    data.fold((l) {
      emit(HomeImagesListFaile(error: l.errMessage));
    }, (r) {
      emit(HomeImagesListSuccess(r));
    });
  }
}
