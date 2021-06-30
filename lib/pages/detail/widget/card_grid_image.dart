import 'package:dicoding_pemula/model/model_singer.dart';
import 'package:flutter/material.dart';

import '../detail_page.dart';

class CardGridWidget extends StatelessWidget {
  final int? id;

  const CardGridWidget({
    Key? key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 10, 16, 20),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
            children: listSinger
                .followedBy(
                  listSinger
                      .take(id!)
                      .skipWhile((value) => id == value.id)
                      .takeWhile((value) => id != value.id),
                )
                .skip(id!)
                .map(
                  (e) => InkWell(
                    child: Card(
                      elevation: 4,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(e.image!),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(e.name!),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            id: e.id,
                            image: e.image,
                            name: e.name,
                            description: e.desc,
                            born: e.born,
                            placeOfBirth: e.placeOfBirth,
                            album: e.album,
                          ),
                        ),
                      );
                    },
                  ),
                )
                .toList()),
      ),
    );
  }
}
