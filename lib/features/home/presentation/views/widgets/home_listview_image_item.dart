// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booklyapp/core/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeListViewImageItem extends StatelessWidget {
  const HomeListViewImageItem({
    Key? key,
    this.imageUrl,
  }) : super(key: key);
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kdetailsView);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: AspectRatio(
            aspectRatio: 2.4 / 4,
            child: imageUrl != null
                ? CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: imageUrl!,
                  )
                : const Icon(Icons.accessible_forward_outlined)),
      ),
    );
  }
}
