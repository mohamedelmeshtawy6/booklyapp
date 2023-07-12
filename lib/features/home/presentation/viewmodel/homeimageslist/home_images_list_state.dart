part of 'home_images_list_cubit.dart';

abstract class HomeImagesListState extends Equatable {
  const HomeImagesListState();

  @override
  List<Object> get props => [];
}

class HomeImagesListInitial extends HomeImagesListState {}

class HomeImagesListLoading extends HomeImagesListState {}

class HomeImagesListSuccess extends HomeImagesListState {
  final List<BookModel> books;

  const HomeImagesListSuccess(this.books);
}

class HomeImagesListFaile extends HomeImagesListState {
  final String error;
  const HomeImagesListFaile({
    required this.error,
  });
}
