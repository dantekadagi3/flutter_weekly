import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int? rating; // Declare the rating as final since it won't change for StatelessWidget

  // Constructor to initialize the rating
  RatingWidget({super.key, this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating! ? Icons.star : Icons.star_border,
              color: Colors.yellow,
            );
          }),
        ),
        const SizedBox(width:5),
        //Adding the label that will show the rating number out of the max number of stars
        Text('${this.rating}/5 Reviews',
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey.withOpacity(0.7)
        ),)
      ],
    );
  }
}
