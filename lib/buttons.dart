import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      style: TextStyle(fontSize: 25),
      decoration: InputDecoration.collapsed(
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
      style: TextStyle(fontSize: 50),
      decoration: InputDecoration.collapsed(
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
