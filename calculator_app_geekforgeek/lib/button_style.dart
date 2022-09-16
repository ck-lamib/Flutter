import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final dynamic color;
  final dynamic textColor;
  final dynamic buttonText;
  final dynamic buttonTap;

  const MyButton({super.key, this.color, this.textColor, required this.buttonText, this.buttonTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: (buttonText.runtimeType == String)
                  ? Text(
                      buttonText,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 25,
                      ),
                    )
                  : RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.backspace,
                              size: 30,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
