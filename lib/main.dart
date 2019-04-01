import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget  {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController controlr;

  @override
  void initState() {
    super.initState();
    controlr = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controlr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0.0,
        title: Text('Korean Actors', 
        style: TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.white,
          fontSize: 25.0,
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.white,),
            color: Colors.white,
            onPressed: null,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0 , bottom: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                 listItem('leeminho.jpg', 'Lee Min Ho'),
                 SizedBox(width: 15.0,),
                 listItem('r.jpg', 'Park Shin Hye'),
                 SizedBox(width: 15.0,),
                 listItem('q.jpg', 'kim so hyun'),
                 SizedBox(width: 15.0,),
                 listItem('kimbokju.jpg', 'Lee Sung Kyung'),
                 SizedBox(width: 15.0,),
                 listItem('woobin.jpg', 'kim woo win'),
                 SizedBox(width: 15.0,),
                 listItem('r.jpg', 'Park kim so'),
                 SizedBox(width: 15.0,),
                 listItem('parkshinhye.png', 'Park Shin Hye'),
                 SizedBox(width: 15.0,),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 450.0,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                          Container(
                            height: 75.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white, 
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('kimbokju.jpg'),
                              )
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: MediaQuery.of(context).size.width -150,
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Lee Sung Kyung',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 3.0,),
                              Text('South Korea',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.0,
                                  color: Colors.black12,
                                ),
                              ),
                              ],
                            ),
                            IconButton(icon: Icon(Icons.more_vert, size: 20,), color: Colors.black54, onPressed: null,),
                            ],
                          ),
                          ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                          child: Text('She acted in Weightlifting Fairy Kim Bok-joo',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize:13.0,
                              color: Colors.black12,
                          ),
                         ),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Hero(
                            child: Container(
                              height: 200.0,
                              width: (MediaQuery.of(context).size.width -50)/2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(image: AssetImage('bok3.jpg'),fit: BoxFit.cover)
                              ),
                            ), 
                            tag: 'bok3.jpg',
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Hero(
                              tag: 'bok2.jpg',
                              child: Container(
                                height: 95.0,
                                width: (MediaQuery.of(context).size.width -100)/2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(image: AssetImage('bok2.jpg'),fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            InkWell(
                              child: Hero(
                              tag: 'bok3.jpg',
                              child: Container(
                                height: 95.0,
                                width: (MediaQuery.of(context).size.width -100)/2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(image: AssetImage('bok1.jpg'),fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 23,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.brown.withOpacity(0.3),
                          ),
                          child: Center(
                            child: Text('#South Korea',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color : Colors.brown,
                            ),
                            ),
                          )
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 23,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.brown.withOpacity(0.3),
                          ),
                          child: Center(
                            child: Text('#Actress',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color : Colors.brown,
                            ),
                            ),
                          )
                        ),
                      ],
                    ),
                    SizedBox(height:5.0),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                        decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.2)
                        ),
                    ),
                    SizedBox(height: 1.5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(onPressed:(){}, icon: Icon(Icons.reply, size: 20, color: Colors.grey.withOpacity(0.4),), ),
                        Container(
                          height: 20,
                          width: 30,
                          child: Center(child: Text('23k', style: TextStyle(fontSize: 10),),),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                        IconButton(onPressed:(){}, icon: Icon(Icons.comment, size: 20, color: Colors.grey.withOpacity(0.4) ,), ),
                        Container(
                          height: 20,
                          width: 30,
                          child: Center(child: Text('300', style: TextStyle(fontSize: 10),),),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(2)
                          ),
                        ), 
                        Container(
                          width: MediaQuery.of(context).size.width -230,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(icon: Icon(Icons.favorite, color:Colors.red, size: 20),onPressed: () {},),
                              Text('2.3K'),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
                    Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 450.0,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                          Container(
                            height: 75.0,
                            width: 75.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white, 
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('leeminho.jpg'),
                              )
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            width: MediaQuery.of(context).size.width -150,
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Lee Min Ho',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 3.0,),
                              Text('South Korea',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.0,
                                  color: Colors.black12,
                                ),
                              ),
                              ],
                            ),
                            IconButton(icon: Icon(Icons.more_vert, size: 20,), color: Colors.black54, onPressed: null,),
                            ],
                          ),
                          ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                          child: Text('Lee Min-ho is a South Korean actor and singer. Played in Boys Over Flowers in 2009',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize:13.0,
                              color: Colors.black12,
                          ),
                         ),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        InkWell(
                          child: Hero(
                            child: Container(
                              height: 200.0,
                              width: (MediaQuery.of(context).size.width -50)/2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(image: AssetImage('lee1.jpg'),fit: BoxFit.cover)
                              ),
                            ), 
                            tag: 'lee1.jpg',
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Hero(
                              tag: '',
                              child: Container(
                                height: 95.0,
                                width: (MediaQuery.of(context).size.width -100)/2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(image: AssetImage('lee3.jpg'),fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            InkWell(
                              child: Hero(
                              tag: '',
                              child: Container(
                                height: 95.0,
                                width: (MediaQuery.of(context).size.width -100)/2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(image: AssetImage('lee2.jpg'),fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 23,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.brown.withOpacity(0.3),
                          ),
                          child: Center(
                            child: Text('#South Korea',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color : Colors.brown,
                            ),
                            ),
                          )
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 23,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.brown.withOpacity(0.3),
                          ),
                          child: Center(
                            child: Text('#Actor',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color : Colors.brown,
                            ),
                            ),
                          )
                        ),
                      ],
                    ),
                    SizedBox(height:5.0),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                        decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.2)
                        ),
                    ),
                    SizedBox(height: 1.5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(onPressed:(){}, icon: Icon(Icons.reply, size: 20, color: Colors.grey.withOpacity(0.4),), ),
                        Container(
                          height: 20,
                          width: 30,
                          child: Center(child: Text('2k', style: TextStyle(fontSize: 10),),),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                        IconButton(onPressed:(){}, icon: Icon(Icons.comment, size: 20, color: Colors.grey.withOpacity(0.4) ,), ),
                        Container(
                          height: 20,
                          width: 30,
                          child: Center(child: Text('176', style: TextStyle(fontSize: 10),),),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(2)
                          ),
                        ), 
                        Container(
                          width: MediaQuery.of(context).size.width -230,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(icon: Icon(Icons.favorite, color:Colors.red, size: 20),onPressed: () {},),
                              Text('1.7K'),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controlr,
          indicatorColor: Colors.teal,
          tabs: <Widget>[
          Tab(icon: Icon(Icons.more, color: Colors.grey, size: 15,),),
          Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 15,),),
          Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 15,),),
          Tab(icon: Icon(Icons.supervised_user_circle, color: Colors.grey, size: 15,),),
        ],),
      ),
    );
  }
  Widget listItem(String impath, String name){
    return Column (
       children: <Widget>[
         Stack (
           children: <Widget>[ Container(
               height: 85.0,
               width: 85.0,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50.5),
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage(impath),
                 ),
               ),
             ),
           ],
         ),
         SizedBox(height: 10.0,),
         Container(
           height: 30.0,
           width: 90.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15.0),
             color: Colors.brown,
           ),
           child: Center (
             child: Text(name,
           style : TextStyle(
             fontFamily:'Montserrat',
             fontSize: 12.0, 
             color: Colors.white, 
            ),
           ) ,
           ),
         ),
       ],
    );
  }
}
