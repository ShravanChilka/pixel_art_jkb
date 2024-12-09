import 'package:flutter/material.dart';
import 'package:pixel_art_jkb/pixel_art/view_model/pixel_art_view_model.dart';
import 'package:provider/provider.dart';

import '../dialogs/color_picker_dialog_helper.dart';

class PixelArtPickColorIconButton extends StatelessWidget {
  const PixelArtPickColorIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final selectedColor = context.watch<PixelArtViewModel>().selectedColor;
    final iconColor =
        ColorScheme.fromSeed(seedColor: selectedColor).onPrimaryContainer;

    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        ColorPickerDialogHelper.show(context);
      },
      child: Ink(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedColor,
        ),
        child: Icon(
          Icons.color_lens_rounded,
          color: iconColor,
        ),
      ),
    );
  }
}
