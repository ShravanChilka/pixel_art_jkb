import 'package:flutter/material.dart';
import 'package:pixel_art_jkb/pixel_art/model/pixel_model.dart';

class PixelArtGridViewItem extends StatelessWidget {
  const PixelArtGridViewItem({
    super.key,
    required this.model,
    required this.onTap,
  });

  final VoidCallback onTap;
  final PixelModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        color: getColor(),
      ),
    );
  }

  Color? getColor() {
    if (model.color == null) {
      return model.expected?.withOpacity(0.1);
    }
    return model.color;
  }
}
