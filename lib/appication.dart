import 'package:flutter/material.dart';

import 'pixel_art/view/pixel_art_provider.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PixelArtProvider(),
      theme: ThemeData.dark(),
    );
  }
}
