import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
      "when an unknown printer took a galley of type and scrambled it to make a type "
      "specimen book. It has survived not only five centuries, but also the leap into "
      "electronic typesetting, remaining essentially unchanged. It was popularised in "
      "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
      "and more recently with desktop publishing software like Aldus PageMaker including "
      "versions of Lorem Ipsum.",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      // textScaleFactor: 1.5,
      style: TextStyle(
          backgroundColor: Colors.green,
          color: Color(0xFF0000FF),
          //Colors.amberAccent,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          // wordSpacing: 10,
          // letterSpacing: 5,
          // fontFamily: "Times New Roman",//"Roboto

          shadows: [
            Shadow(
              color: Colors.redAccent,
              offset: Offset.zero,
              blurRadius: 10,
            ),
          ]),
    );
  }
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: "Bạn chưa có tài khoản? ",
        style: TextStyle(
          fontSize: 20,
          color: Colors.deepOrange,
          fontFamily: "InterTight",
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: "Đăng ký ngay!",
            style: TextStyle(
              fontSize: 13,
              color: Colors.cyan,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}

class TextWithIconWidget extends StatelessWidget {
  const TextWithIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Let him cook ',
            style: TextStyle(
              fontSize: 25,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: Icon(Icons.add_call, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

class TextCopyWidget extends StatelessWidget {
  const TextCopyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectableText(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
      maxLines: 3,
      // textScaleFactor: 1.5,
      style: TextStyle(
          backgroundColor: Colors.green,
          color: Color(0xFF0000FF),
          //Colors.amberAccent,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          // wordSpacing: 10,
          // letterSpacing: 5,
          // fontFamily: "Times New Roman",//"Roboto

          shadows: [
            Shadow(
              color: Colors.redAccent,
              offset: Offset.zero,
              blurRadius: 10,
            ),
          ]),
    );
  }
}
