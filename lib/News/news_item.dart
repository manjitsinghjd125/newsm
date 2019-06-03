import 'package:flutter/material.dart';
import 'package:newsm/Model/news_model.dart';
import 'package:newsm/News/news_detail.dart';

class Listitem extends StatelessWidget{
  final List<Article> article;
  Listitem(this.article);
@override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    
    
    return Container(
      
      child: ListView.builder(
        
          itemCount: 20,
          padding: const EdgeInsets.all(2.0),
          itemBuilder: (context, position) {
            
            
            return Card(
              
              child: Container(
                
                height: 150.0,
                width: width,
                child: Center(
                  child: ListTile(
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        '${article[position].publishedAt}',
                        style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 12.0
          ),
                      ),
                    ),
                    title: Text(
                      '${article[position].title}' ,
                       style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 18.0
                          ),
                    ),
                    leading: Container(
                      height: 100.0,
                      width: 100.0,
                      child: article[position].urlToImage == null
                          ? Image.asset('${article[position].urlToImage}',height: 70,
                            width: 70,)
                            
                          : Image.network('${article[position].urlToImage}',height: 70,
                            width: 70,),
                    ),
                    onTap: () => _onTapItem(context, article[position]),
                  ),
                ),
              ),
            );
          }),
    );
  }

  void _onTapItem(BuildContext context, Article article) {
Navigator.of(context).push(MaterialPageRoute(
       builder: (BuildContext context) => NewsDetails(article,"TOP NEWS")// widget.title)
      )
      );

  }




}