import 'package:flutter/material.dart';

class MessageButton extends StatefulWidget {
  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  const MessageButton(
      {super.key,
      required this.buttonColor,
      required this.buttonText,
      required this.textColor});

  @override
  State<MessageButton> createState() => _MessageButtonState();
}

class _MessageButtonState extends State<MessageButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.08,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: widget.buttonColor),
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: widget.textColor),
          ),
        ));
  }
}
