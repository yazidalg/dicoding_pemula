import 'package:dicoding_pemula/pages/detail/widget/card_grid_image.dart';
import 'package:flutter/material.dart';

class DetailPagePhone extends StatelessWidget {
  final int? id;
  final String? image;
  final String? name;
  final String? description;
  final String? placeOfBirth;
  final String? born;
  final List<String>? album;
  const DetailPagePhone({
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
    Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: orientation == Orientation.landscape
                      ? BoxFit.fitHeight
                      : BoxFit.cover,
                  image: AssetImage(image!),
                ),
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.black45],
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black54,
                      Colors.black87,
                      Colors.black,
                    ],
                  ),
                ),
                child: Text(
                  name!,
                  maxLines: 2,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Divider(color: Colors.white),
            Container(
              margin: EdgeInsets.fromLTRB(16, 5, 16, 5),
              child: Text(
                description!,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(color: Colors.white),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(16, 5, 16, 5),
                        child: Text(
                          born!,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(16, 5, 16, 5),
                      child: Text(
                        placeOfBirth!,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Card(
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(16, 5, 16, 5),
                  child: Text(
                    album!.join(' | '),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Divider(color: Colors.white),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 16),
              child: Text("Temukan Lainnya"),
            ),
            CardGridWidget(id: id)
          ],
        ),
      ),
    );
  }
}
