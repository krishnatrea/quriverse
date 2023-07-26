
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/color_constants.dart';

class ProfileImage extends StatelessWidget {
  final String url;
  const ProfileImage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kOrangeColor, width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                url,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
