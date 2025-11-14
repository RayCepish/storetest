import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  final ValueChanged<String>? onChanged;

  const CustomInput({super.key, required this.hint, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Theme.of(context).colorScheme.surface,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIconColor: Theme.of(context).colorScheme.primary,
      ),
      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
    );
  }
}
