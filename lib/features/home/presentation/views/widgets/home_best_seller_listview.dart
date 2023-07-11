import 'package:booklyapp/features/home/presentation/views/widgets/home_best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class HomeBestSellerListView extends StatelessWidget {
  const HomeBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (_, index) => const HomeBestSellerLiseViewItem()),
    );
  }
}
