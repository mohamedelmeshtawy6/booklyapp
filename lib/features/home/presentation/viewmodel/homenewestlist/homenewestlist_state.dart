// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'homenewestlist_cubit.dart';

abstract class HomeNewestListState extends Equatable {
  const HomeNewestListState();

  @override
  List<Object> get props => [];
}

class HomeNewestListInitial extends HomeNewestListState {}

class HomeNewestListLoading extends HomeNewestListState {}

class HomeNewestListSuccess extends HomeNewestListState {
  final List<BookModel>? books;

  const HomeNewestListSuccess(this.books);
}

class HomeNewestListFaile extends HomeNewestListState {
  final String error;
  const HomeNewestListFaile({
    required this.error,
  });
}
