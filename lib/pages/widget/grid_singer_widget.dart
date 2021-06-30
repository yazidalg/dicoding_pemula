import 'package:dicoding_pemula/model/model_singer.dart';
import 'package:flutter/material.dart';

import '../detail/detail_page.dart';

class GridSingerWidget extends StatelessWidget {
  const GridSingerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: listSinger.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                padding: EdgeInsets.all(12),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black45, Colors.black12, Colors.white10],
                      begin: Alignment.bottomCenter),
                ),
                child: Text(
                  listSinger[index].name!,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(listSinger[index].image!),
                ),
              ),
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
          );
        },
      ),
    );
  }
}
