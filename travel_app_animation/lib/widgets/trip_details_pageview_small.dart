import 'package:flutter/material.dart';
import 'package:wander_animation/widgets/user_chaip.dart';

class TripDetailsPageviewSmall extends StatelessWidget {
  final String imagePath;
  final String date;
  final String title;

  // ignore: use_super_parameters
  const TripDetailsPageviewSmall({
    Key? key,
    required this.imagePath,
    required this.date,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: "date",
                      child: Text(
                        date,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.white10,
                            ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    FractionallySizedBox(
                      widthFactor: 0.7,
                      child: Hero(
                        tag: "title",
                        child: Text(
                          title,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const UserChips(),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
