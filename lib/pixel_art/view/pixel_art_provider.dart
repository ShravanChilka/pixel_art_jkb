import 'package:flutter/material.dart';
import 'package:pixel_art_jkb/pixel_art/view/pixel_art_screen.dart';
import 'package:provider/provider.dart';

import '../view_model/pixel_art_view_model.dart';

class PixelArtProvider extends StatelessWidget {
  const PixelArtProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PixelArtViewModel(),
      child: const PixelArtScreen(),
    );
  }
}
