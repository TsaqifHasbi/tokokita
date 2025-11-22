import 'package:flutter/material.dart';

class WarningDialog extends StatelessWidget {
  final String? description;
  const WarningDialog({Key? key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Peringatan"),
      content: Text(description ?? "Terjadi kesalahan"),
      actions: [
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
