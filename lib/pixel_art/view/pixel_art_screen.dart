import 'package:flutter/material.dart';
import 'package:pixel_art_jkb/pixel_art/view/dialogs/color_picker_dialog_helper.dart';

import 'widgets/pixel_art_grid_view_builder.dart';
import 'widgets/pixel_art_pick_color_icon_button.dart';

class PixelArtScreen extends StatelessWidget {
  const PixelArtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixel Art'),
        actions: const [
          PixelArtPickColorIconButton(),
        ],
      ),
      body: const PixelArtGridViewBuilder(),
    );
  }
}
