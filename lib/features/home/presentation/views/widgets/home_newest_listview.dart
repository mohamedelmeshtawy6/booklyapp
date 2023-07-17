import 'package:booklyapp/features/home/presentation/views/widgets/home_newest_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/newests/newest_cubit.dart';

class HomeNewestListView extends StatelessWidget {
  const HomeNewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestCubit, NewestState>(
      builder: (context, state) {
        if (state is NewestSuccess) {
          return Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) => HomeNewestItem(
                      book: state.books[index],
                    )),
          );
        } else if (state is NewestFaile) {
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
