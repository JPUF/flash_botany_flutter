import 'package:flutter/material.dart';

import '../../../../shared/data/lesson_data.dart';

class ProgressionIndicator extends StatelessWidget {
  const ProgressionIndicator({
    super.key,
    required this.currentProgression,
  });

  final int currentProgression;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: currentProgression,
          child: Container(height: 5, color: Colors.deepOrange),
        ),
        Expanded(
          flex: LessonData.maxProgression - currentProgression,
          child: Container(height: 5, color: Colors.black),
        ),
      ],
    );
  }
}
