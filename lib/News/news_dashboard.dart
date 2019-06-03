import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newsm/Model/connection.dart';
import 'package:newsm/News/news_item.dart';
import 'package:newsm/Model/news_model.dart';
import 'package:newsm/category/category.dart';
class HomePage extends StatefulWidget{
  final String startingproduct;
  HomePage(this.startingproduct);
  
@override

  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{
 List<Article> newslistdata =[];
  Services s = new Services();
  
  Future<void> refreshlist() async{
    setState(() {
     s.getData("top_news");
    });
  }





  @override
    Widget build(BuildContext context) {
      
      final double statusBarHeight = MediaQuery.of(context).padding.top;
     
//var tabBarHeight = primaryTabBar.preferredSize.height;
var pinnedHeaderHeight =
//statusBar height
statusBarHeight +
    //pinned SliverAppBar height in header
    kToolbarHeight+20;
    
       return Padding(
         padding: new EdgeInsets.only(top: statusBarHeight),
      child: Scaffold(
         
        body: DefaultTabController(
          
        length: 2,
        child: NestedScrollView(
          
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            
            return <Widget>[
             
              SliverAppBar(
                
                expandedHeight: pinnedHeaderHeight,
                floating: true,
                pinned: true,
                snap: false,
                backgroundColor: Colors.grey[400],
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("NEWS",
                    textAlign: TextAlign.left,
                        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 26.0
          ),
                        ),
                    background: Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      fit: BoxFit.cover,
                    )),
               
               
              ),
              
            ];
          },
          body: RefreshIndicator(
           onRefresh: refreshlist,
            child: FutureBuilder(
          future: s.getData("top_news"),
          builder: (context, snapshot) {
            return snapshot.data != null
                ? Listitem(snapshot.data)
                : Center(child: CircularProgressIndicator());
          }), 
          ),
          
        ),
      ),

  
    

));
    }
}

