import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'location_text.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            location.name,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(assetPath: location.imagePath),
            Container(
              margin: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0),
              child: FlatButton(
                onPressed: () {},
                color: Colors.red,
                child: Container(
                  child: Text(
                    'BOOK',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ]..addAll(textSections(location)),
        ),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => LocationText(title: fact.title, body: fact.text))
        .toList();
  }
}
