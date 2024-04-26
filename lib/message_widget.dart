import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  String imagePath;
  String message;

  MessageWidget({super.key, required this.imagePath, required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 20, backgroundImage: AssetImage(imagePath)),
        // TextField(
        //   decoration: InputDecoration(
        //     border: const OutlineInputBorder(),
        //     hintText: message,
        //   ),
        // ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          color: Colors.transparent.withOpacity(0.5),
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
