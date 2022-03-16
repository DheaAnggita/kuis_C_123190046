import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'movie.dart';


class DetailPage extends StatelessWidget {

  final String poster_path;
  final String title;
  final String release_date;
  final double popularity;
  final String original_language;
  final String original_title;
  final String trailer;
  final String overview;
  final double vote_average;
  final int vote_count;

  const DetailPage({
    Key? key,
    required this.poster_path,
    required this.title,
    required this.release_date,
    required this.popularity,
    required this.original_language,
    required this.original_title,
    required this.trailer,
    required this.overview,
    required this.vote_average,
    required this.vote_count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Movie'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 16),
              Image.network(poster_path, height: 300),
              SizedBox(height: 16),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text("Desc : " + overview, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
              Text("Original Language : " + original_language, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
              Text("Original title : " + original_title, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
              Text(trailer, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}