import 'package:flutter/material.dart';
import 'package:newsm/Model/news_model.dart';
import 'package:newsm/More/web_view.dart';

class NewsDetails extends StatefulWidget {
  final Article article;
  final String title;

  NewsDetails(this.article, this.title);

  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title,
         textAlign: TextAlign.center,
                        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 26.0
          ),),
         backgroundColor:  Colors.grey[400],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(widget.article.urlToImage),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.article.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.article.description,
                      style: TextStyle(fontSize: 19.0),
                    ),
                  ),
                  MaterialButton(
                
                height: 50.0,
                color: Colors.grey,
                child: Text(
                  "For More Details",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                         WebView(widget.article.url)));
                },
)
                ],
              ),
              
            ],
          ),
        ));
  }
}

  