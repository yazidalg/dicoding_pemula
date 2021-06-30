import 'package:dicoding_pemula/model/model_singer.dart';
import 'package:dicoding_pemula/pages/detail/detail_page.dart';
import 'package:flutter/material.dart';

class ListSingetWidget extends StatelessWidget {
  const ListSingetWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listSinger.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.fromLTRB(16, 10, 16, 8),
          child: Card(
            elevation: 2,
            child: InkWell(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(listSinger[index].image!),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 12),
                      padding: EdgeInsets.only(right: 12, bottom: 20),
                      height: 120,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                              width: double.infinity,
                              child: Text(
                                listSinger[index].name!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          Container(
                            width: double.infinity,
                            child: Text(
                              listSinger[index].desc!,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      id: listSinger[index].id,
                      image: listSinger[index].image,
                      name: listSinger[index].name,
                      description: listSinger[index].desc,
                      born: listSinger[index].born,
                      placeOfBirth: listSinger[index].placeOfBirth,
                      album: listSinger[index].album,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
