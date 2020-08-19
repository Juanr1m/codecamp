import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'location_text.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'TOURISM & CO.',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(assetPath: 'assets/images/kiyomizu-dera.jpg'),
          LocationText(
            title: 'MOUNT FUJI',
            body: 'Lorem ipsum asd asd asdasd ',
            color: Colors.green,
          ),
          LocationText(
            title: 'SUMMARY',
            body:
                'its considered one of Japans 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo period prints bu Hokusai and Hiroshige',
          ),
          LocationText(
            title: 'Did you know?',
            body:
                'Three are three cities that surround Mount Fuji: Gotemba, Fujitoshi, Fujinomiya ',
          ),
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
        ],
      ),
    ));
  }
}
