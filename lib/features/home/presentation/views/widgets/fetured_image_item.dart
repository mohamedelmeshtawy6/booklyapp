import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:booklyapp/core/app_router.dart';

import '../../../data/model/book_model/book_model.dart';

//todo: done

class FeturedImageItem extends StatelessWidget {
  const FeturedImageItem({
    Key? key,
    this.url,
    required this.aspectRatio,
  }) : super(key: key);
  final String? url;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: AspectRatio(
          aspectRatio: aspectRatio,
          child: url != null
              ? CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: url!,
                )
              : const Icon(Icons.accessible_forward_outlined)),
    );
  }
}
