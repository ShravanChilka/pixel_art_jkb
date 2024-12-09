import 'package:flutter/material.dart';
import 'package:pixel_art_jkb/pixel_art/service/pixel_art_data.dart';

import '../model/pixel_model.dart';
import '../../global/extensions/color_hex_extension.dart';

const size = 24;

class PixelArtViewModel extends ChangeNotifier {
  List<PixelModel> list = List.generate(
    size * size,
    (index) {
      print(PixelArtData.cat);
      return PixelModel(
        expected: HexColor.fromHex(PixelArtData.cat[index]),
      );
    },
  );

  Color selectedColor = Colors.red;

  void paintPixelEvent(int index) {
    list[index] = PixelModel(color: selectedColor);
    notifyListeners();
  }

  void changeSelectedColorEvent(Color? picked) {
    if (picked == null) return;
    selectedColor = picked;
    notifyListeners();
  }
}
