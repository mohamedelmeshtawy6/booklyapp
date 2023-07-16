import 'package:booklyapp/features/home/presentation/viewmodel/homenewestlist/homenewestlist_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/fetured_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeNewestListView extends StatelessWidget {
  const HomeNewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeNewestListCubit, HomeNewestListState>(
      builder: (context, state) {
        if (state is HomeNewestListSuccess) {
          return Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) => FeturedLiseViewItem(
                      books: state.books?[index],
                    )),
          );
        } else if (state is HomeNewestListFaile) {
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
