import 'dart:math' as math;

import 'package:flutter/material.dart';

class PixelArtData {
  static List<String> cat = List.generate(24 * 24, (index) {
    return math.Random().nextInt(0xffffffff).toString();
  });
}
