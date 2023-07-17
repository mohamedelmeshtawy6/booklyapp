import 'package:booklyapp/features/home/presentation/views/widgets/fetured_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/app_router.dart';
import '../../viewmodel/images/images_cubit.dart';

class HomeImagesListView extends StatelessWidget {
  const HomeImagesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagesCubit, ImagesState>(
      builder: (context, state) {
        if (state is ImagesSuccess) {
          return SizedBox(
              height: 194.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemBuilder: (c, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            GoRouter.of(context).push(AppRouter.kdetailsView,
                                extra: state.books[index]);
                          },
                          child: FeturedImageItem(
                            url: state
                                .books[index].volumeInfo?.imageLinks?.thumbnail,
                            aspectRatio: 2.4 / 4,
                          ),
                        ),
                      )));
        } else if (state is ImagesFaile) {
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
