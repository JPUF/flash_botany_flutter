import 'package:flutter/material.dart';

import 'custom_button.dart';

class AnswerOptions extends StatefulWidget {
  const AnswerOptions({Key? key, required this.onAnswerSelected})
      : super(key: key);

  final VoidCallback onAnswerSelected;

  @override
  State<AnswerOptions> createState() => _AnswerOptionsState();
}

class _AnswerOptionsState extends State<AnswerOptions> {
  bool _visible = false;
  final _duration = const Duration(milliseconds: 250);
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1 : 0,
      curve: Curves.ease,
      duration: _duration,
      child: Center(
        child: Table(
          children: [
            TableRow(children: [
              CustomButton(title: 'Testeraceae', onTapped: widget.onAnswerSelected),
              CustomButton(title: 'Lesteraceae', onTapped: widget.onAnswerSelected),
            ]),
            TableRow(children: [
              CustomButton(title: 'Besteraceae', onTapped: widget.onAnswerSelected),
              CustomButton(title: 'Festeraceae', onTapped: widget.onAnswerSelected),
            ])
          ],
        ),
      ),
    );
  }
}
