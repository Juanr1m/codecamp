import 'package:flutter/material.dart';

class LocationText extends StatelessWidget {
  final String title;
  final String body;
  final Color color;
  static const double hpad = 16.0;
  const LocationText({
    Key key,
    this.color,
    this.title,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(hpad, 32.0, hpad, 4.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(hpad, 32.0, hpad, 4.0),
          child: Text(
            body,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
