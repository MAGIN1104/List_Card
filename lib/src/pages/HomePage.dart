import 'package:flutter/material.dart';

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
  int rating = 0;
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
                _targeta(
                  'https://www.exoticca.com/au/blog/wp-content/uploads/2018/02/brasil.jpg',
                  'BRASIL',
                  "300 Bs.",
                  4
                  ),
                _targeta(
                  'https://images.unsplash.com/photo-1474181487882-5abf3f0ba6c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                  'CHINA',
                  "1000 Bs.",
                  3
                ),  
                _targeta(
                  'https://www.lavanguardia.com/r/GODO/LV/p6/WebSite/2019/09/16/Recortada/f42e5114335946f790d2f3cf06be67f0-kGmF-U473834236530dB-992x558@LaVanguardia-Web.jpg',
                  'KOREA',
                  "800 Bs.",
                  2.0
                  ),  
                _targeta(
                  'https://i.insider.com/5d0150e06fc9200b5a05f042?width=1100&format=jpeg&auto=webp',
                  'EE.UU.',
                  "950 Bs.",
                  4
                  ),  
                _targeta(
                  'https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_720,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/epfwv7krulrgh6enxqjo/ParisCityBusTour.jpg',
                  'PARIS',
                  "1500 Bs.",
                  4
                  ),
                  
            ],
          ),
          Container(color: Colors.deepPurple),
          Container(color: Colors.amber),
        ],
      )
    );
  }
  Widget _targeta(imagen,lugar,precio,_rating){
    return Card(
            margin: EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
               Image(
                
                    width: MediaQuery.of(context).size.width/2.4,
                    height: MediaQuery.of(context).size.height/5,
                    image: NetworkImage(imagen),
                    fit: BoxFit.cover,
                    ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(lugar, style: TextStyle(fontSize: 25),),
                      Text('PASAJE: $precio'),
                      ratingStar(_rating)
                    ],
                  )
                ),
              ],
            ),
          );
  }

  Widget ratingStar(rating){
    switch (rating) {
      case 1:
      {
          return Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),           
            ],
          );
      }break;
      case 2:
      {
          return Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),          
            ],
          );
      }break;
      case 3:
      {
          return Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star_border, color: Colors.orangeAccent,),
              Icon(Icons.star_border, color: Colors.orangeAccent,),         
            ],
          );
      }break;
      case 4:
      {
          return Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star_border, color: Colors.orangeAccent,),         
            ],
          );
      }break;
      case 5:
      {
          return Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
              Icon(Icons.star, color: Colors.orangeAccent,),
            ],
          );
      }break;
      default: {
          return Row(
            children: <Widget>[
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),
              Icon(Icons.star_border,color: Colors.orangeAccent,),           
            ],
          );
      }break;
    }
  }
}