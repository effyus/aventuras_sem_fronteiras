import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:wander_animation/models/trip_data.dart';

class TripDataCard extends StatelessWidget {
  const TripDataCard({super.key, required this.tripData});

  final TripData tripData;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(350, 400),
      child: Align(
          alignment: Alignment(0.0, -0.9),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              tripData.title.toString(),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                  ),
            ),
          )),
    );
  }
}
