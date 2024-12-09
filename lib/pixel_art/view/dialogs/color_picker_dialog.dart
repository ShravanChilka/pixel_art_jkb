// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerDialog extends StatefulWidget {
  const ColorPickerDialog({
    super.key,
    required this.currentColor,
  });

  final Color currentColor;

  @override
  State<ColorPickerDialog> createState() => _ColorPickerDialogState();
}

class _ColorPickerDialogState extends State<ColorPickerDialog> {
  late Color selectedColor;

  @override
  void initState() {
    super.initState();
    selectedColor = widget.currentColor;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Pick a color!'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            ColorPicker(
              pickerColor: widget.currentColor,
              onColorChanged: (value) {
                selectedColor = value;
              },
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pop(selectedColor);
              },
              child: const Text('Select'),
            )
          ],
        ),
      ),
    );
  }
}
