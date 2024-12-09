import 'package:flutter/material.dart';
import 'package:pixel_art_jkb/pixel_art/view/dialogs/color_picker_dialog.dart';
import 'package:pixel_art_jkb/pixel_art/view_model/pixel_art_view_model.dart';
import 'package:provider/provider.dart';

class ColorPickerDialogHelper {
  static void show(BuildContext context) async {
    final current = context.read<PixelArtViewModel>().selectedColor;
    final picked = await showDialog<Color>(
      context: context,
      builder: (context) {
        return ColorPickerDialog(
          currentColor: current,
        );
      },
    ).then((picked) {
      context.read<PixelArtViewModel>().changeSelectedColorEvent(picked);
      print(picked);
    });
  }
}
