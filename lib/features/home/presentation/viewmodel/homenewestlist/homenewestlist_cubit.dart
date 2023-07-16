// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repo/home_detail_repo.dart';

part 'homenewestlist_state.dart';

class HomeNewestListCubit extends Cubit<HomeNewestListState> {
  HomeNewestListCubit(
    this.homeRepo,
  ) : super(HomeNewestListInitial());

  final HomeDetailRepo homeRepo;

  Future<void> fetchNewestBook() async {
    emit(HomeNewestListLoading());
    var data = await homeRepo.fetchNewestBooks();

    data.fold((l) {
      emit(HomeNewestListFaile(error: l.errMessage));
    }, (r) {
      emit(HomeNewestListSuccess(r));
    });
  }
}
