import 'package:flutter/material.dart';
import 'detail.dart';
import 'movie.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Movie"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataMovie = getDataMovie;

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataMovie[index], context);
      },
      itemCount: dataMovie.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget _createCard(DataMovie data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(poster_path: data.poster_path, title: data.title, release_date: data.release_date, popularity : data.popularity, original_language : data.original_language, original_title : data.original_title, overview : data.overview, vote_average : data.vote_average, vote_count : data.vote_count, trailer: data.trailer);
          }));
        },
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.network(data.poster_path),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text(data.title, style: TextStyle(fontWeight: FontWeight.bold),)),

              ),
              Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text("Release Date : " + data.release_date)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}