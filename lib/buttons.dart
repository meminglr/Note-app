import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextTextField extends StatelessWidget {
  TextTextField({
    super.key,
    required this.tfText,
    required this.autofocus,
  });

  bool autofocus = true;
  final TextEditingController tfText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      autofocus: autofocus,
      controller: tfText,
      maxLines: null,
      style: const TextStyle(fontSize: 25),
      decoration: const InputDecoration.collapsed(
        hintText: "Metin",
        hintStyle: TextStyle(fontSize: 25, color: Colors.black54),
      ),
    );
  }
}

class TitleTextFieid extends StatelessWidget {
  const TitleTextFieid({
    super.key,
    required this.tfTitle,
  });

  final TextEditingController tfTitle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: tfTitle,
      style: const TextStyle(fontSize: 50),
      decoration: const InputDecoration.collapsed(
        hintText: "Başlık",
        hintStyle: TextStyle(fontSize: 50, color: Colors.black54),
      ),
    );
  }
}

class DatePickWidget extends StatelessWidget {
  const DatePickWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
