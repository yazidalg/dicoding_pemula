import 'package:dicoding_pemula/pages/detail/widget/detail_widget_phone.dart';
import 'package:dicoding_pemula/pages/detail/widget/detail_widget_web.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int? id;
  final String? image;
  final String? name;
  final String? description;
  final String? placeOfBirth;
  final String? born;
  final List<String>? album;
  const DetailPage({
    Key? key,
    this.image,
    this.name,
    this.description,
    this.placeOfBirth,
    this.born,
    this.album,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(name!),
      ),
      body: kIsWeb
          ? DetailPageWeb(
              id: id,
              image: image,
              name: name,
              description: description,
              born: born,
              placeOfBirth: placeOfBirth,
              album: album,
            )
          : DetailPagePhone(
              id: id,
              image: image,
              name: name,
              description: description,
              born: born,
              placeOfBirth: placeOfBirth,
              album: album,
            ),
    );
  }
}
