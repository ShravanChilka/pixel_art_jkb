import 'package:flutter/material.dart';
import 'package:pixel_art_jkb/pixel_art/view/widgets/pixel_art_grid_view_item.dart';
import 'package:pixel_art_jkb/pixel_art/view_model/pixel_art_view_model.dart';
import 'package:provider/provider.dart';

class PixelArtGridViewBuilder extends StatelessWidget {
  const PixelArtGridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = context.watch<PixelArtViewModel>().list;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 24,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final model = list[index];
        return PixelArtGridViewItem(
          model: model,
          onTap: () {
            context.read<PixelArtViewModel>().paintPixelEvent(index);
          },
        );
      },
    );
  }
}
