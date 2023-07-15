import 'package:booklyapp/features/home/presentation/viewmodel/homeimageslist/home_images_list_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/home_listview_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeListViewImages extends StatelessWidget {
  const HomeListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeImagesListCubit, HomeImagesListState>(
      builder: (context, state) {
        if (state is HomeImagesListSuccess) {
          return SizedBox(
              height: 194.h,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemBuilder: (c, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: HomeListViewImageItem(
                            imageUrl: state.books[index].volumeInfo?.imageLinks
                                ?.thumbnail),
                      )));
        } else if (state is HomeImagesListFaile) {
          return Center(
            child: Text(state.error),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
