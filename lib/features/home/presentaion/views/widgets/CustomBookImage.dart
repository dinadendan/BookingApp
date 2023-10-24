import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.9/4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl ,
            errorWidget: (context, url , error) => const Icon(
                Icons.error_outline
            ),
          ),
        ),
      ),
    );
  }
}
