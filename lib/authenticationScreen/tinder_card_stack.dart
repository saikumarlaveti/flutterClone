// TODO Implement this library.import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class TinderCardStack extends StatefulWidget {
  @override
  _TinderCardStackState createState() => _TinderCardStackState();
}

class _TinderCardStackState extends State<TinderCardStack>
    with SingleTickerProviderStateMixin {
  List<String> profileImages = [
    'assets/profile1.jpg',
    'assets/profile2.jpg',
    'assets/profile3.jpg',
    'assets/profile4.jpg',
  ];

  int currentIndex = 0;
  Offset cardOffset = Offset.zero;
  double cardAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...profileImages.map((image) {
          int index = profileImages.indexOf(image);
          if (index >= currentIndex) {
            return Positioned(
              top: 20 + (index - currentIndex) * 10,
              left: 20 + (index - currentIndex) * 10,
              right: 20 + (index - currentIndex) * 10,
              bottom: 100 + (index - currentIndex) * 10,
              child: Draggable(
                child: _buildCard(image, index),
                feedback: _buildCard(image, index, dragging: true),
                childWhenDragging: Container(),
                onDragEnd: (details) {
                  setState(() {
                    if (details.offset.dx > 100 || details.offset.dx < -100) {
                      currentIndex++;
                    }
                    cardOffset = Offset.zero;
                    cardAngle = 0.0;
                  });
                },
                onDragUpdate: (details) {
                  setState(() {
                    cardOffset = details.delta;
                    cardAngle = cardOffset.dx / 300;
                  });
                },
              ),
            );
          } else {
            return Container();
          }
        }).toList(),
      ],
    );
  }

  Widget _buildCard(String image, int index, {bool dragging = false}) {
    return Transform.rotate(
      angle: dragging ? cardAngle : 0,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name $index, 23",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Location $index",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
