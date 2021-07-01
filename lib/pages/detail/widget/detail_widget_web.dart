import 'package:dicoding_pemula/pages/detail/widget/card_grid_image.dart';
import 'package:flutter/material.dart';

class DetailPageWeb extends StatefulWidget {
  final int? id;
  final String? image;
  final String? name;
  final String? description;
  final String? placeOfBirth;
  final String? born;
  final List<String>? album;
  const DetailPageWeb({
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
  _DetailPageWebState createState() => _DetailPageWebState();
}

class _DetailPageWebState extends State<DetailPageWeb> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 500,
                    width: 400,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.image!),
                      ),
                      gradient: LinearGradient(
                        colors: [Colors.black, Colors.black45],
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
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
                        widget.name!,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 500,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 12, bottom: 12),
                          width: double.maxFinite,
                          child: Text(widget.description!),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12, bottom: 12),
                          width: double.maxFinite,
                          child: Text("Tanggal Lahir " +
                              widget.born! +
                              " (" +
                              widget.placeOfBirth! +
                              ")"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12, bottom: 12),
                          width: double.maxFinite,
                          child: Text(widget.album!.join(' | ')),
                        ),
                        IconButton(
                          color: isFavorite ? Colors.red : null,
                          icon: isFavorite
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_border),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              margin: EdgeInsets.fromLTRB(16, 10, 16, 16),
              child: Text("Temukan Lainnya "),
            ),
            CardGridWidget(id: widget.id)
          ],
        ),
      ),
    );
  }
}
