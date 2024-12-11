import 'package:flutter/material.dart';

class ListContentWidget extends StatelessWidget{
  final Map<String , dynamic>
    Picture;
  final Function() onTap;

  const ListContentWidget({required this.Picture, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(Picture['download_url']!,
            height: 200,
            fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: 
                  MainAxisAlignment.end,
              children: [
                Text(
                  "by: ${Picture['author']}",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                )
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}