import 'package:flutter/material.dart';
import 'package:flutter/src/material/tab_controller.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  void initState() { 
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }
  @override
  void dispose() { 
    tabController.dispose();
    super.dispose();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LUGARES'),
        backgroundColor: Colors.orange,
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Icon(Icons.home),
            Icon(Icons.directions_run),
            Icon(Icons.accessibility_new)
          ],
        ),
      ),
      body:TabBarView(
        controller: tabController,
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top:12,left: 22,right: 22),
                color: Colors.orange,
                child:_targeta("img/brasil.jpg",'BRASIL',"300 Bs."),
              ),
              Container(
                padding: EdgeInsets.only(top:12,left: 22,right: 22),
                color: Colors.orange,
                child:_targeta2("img/china.jpg",'CHINA',"1000 Bs."),
              ),
             Container(
                padding: EdgeInsets.only(top:12,left: 22,right: 22),
                color: Colors.orange,
                child:_targeta("img/korea.jpg",'KOREA',"800 Bs."),
              ),
             Container(
                padding: EdgeInsets.only(top:12,left: 22,right: 22),
                color: Colors.orange,
                child:_targeta2("img/eeuu.jpg",'EE.UU.',"950 Bs.")
              ),
             Container(
                padding: EdgeInsets.only(top:12,left: 22,right: 22),
                color: Colors.orange,
                child:_targeta("img/paris.jpg",'PARIS',"1500 Bs.")
              ),
            ],
          ),
          Container(color: Colors.deepPurple),
          Container(color: Colors.amber),
        ],
      )
    );
  }
  Widget _targeta(imagen,lugar,precio){
    return Card(

            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage(imagen),
                  width: MediaQuery.of(context).size.width/2.3,
                  height: MediaQuery.of(context).size.height/4,
                  fit: BoxFit.cover,
                  ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(lugar, style: TextStyle(fontSize: 25),),
                      Text('PASAJE: ${precio}'),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.orangeAccent,),
                          Icon(Icons.star, color: Colors.orangeAccent,),
                          Icon(Icons.star, color: Colors.orangeAccent,),
                          Icon(Icons.star_half, color: Colors.orangeAccent,),
                          Icon(Icons.star_border, color: Colors.orangeAccent,),
                        ],
                      )
                    ],
                  )
                )
              ],
            ),
          );
  }
    Widget _targeta2(imagen,lugar,precio){
    return Card(
            child: Row(
              children: <Widget>[
                Container(
                width: MediaQuery.of(context).size.width/2.2899,
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(lugar, style: TextStyle(fontSize: 25)),
                      Text('PASAJE: ${precio}'),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.orangeAccent,),
                          Icon(Icons.star, color: Colors.orangeAccent,),
                          Icon(Icons.star, color: Colors.orangeAccent,),
                          Icon(Icons.star, color: Colors.orangeAccent,),
                          Icon(Icons.star_half, color: Colors.orangeAccent,),
                        ],
                      )
                    ],
                  )
                ),
                Image(
                  image: AssetImage(imagen),
                  width: MediaQuery.of(context).size.width/2.3,
                  height: MediaQuery.of(context).size.height/4,
                  fit: BoxFit.cover,
                  ),
              ],
            ),     
    );
  }
}