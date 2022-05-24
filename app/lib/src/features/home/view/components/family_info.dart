import 'package:flutter/material.dart';

class FamilyInfo extends StatelessWidget {
  const FamilyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Container(color: Colors.blue, width: 200),
              Container(color: Colors.black, width: 200),
              Container(color: Colors.brown, width: 200),
            ],
          ),
        ),
        const Expanded(child: Placeholder())
      ],
    );
  }
}
