import 'package:flutter/material.dart';
import 'package:vibeup/Singer2.dart';
import 'package:vibeup/Singer3.dart';
import 'package:vibeup/Singer4.dart';
import 'package:vibeup/Singer5.dart';
import 'package:vibeup/Singer6.dart';
import 'package:vibeup/singer7.dart';
import 'profile.dart';
import 'singer1.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VibeUp',
      home: const MyHomePage(title: 'VibeUp'),
    theme: ThemeData(

    brightness: Brightness.dark, // Dark theme
    ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _name() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => profile()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double heightFactor = screenWidth < 1024 ? 0.66 : 0.45;
    return Scaffold(
      drawer: NavDrawer(

      ),
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 35.0)),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

          return Stack(
            children: <Widget>[
              Center(
                  child:Text('Vibe with the Legends',style: TextStyle(color: Colors.white,fontSize:20.0),)),
              for (int i = 0; i < 2; i++)
                Align(
                  alignment: Alignment(0, -1 + (i * 2 / 1)),
                  // Adjust vertical alignment
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
                    child: FractionallySizedBox(
                      widthFactor: 1,
                      heightFactor: heightFactor,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => getRouteForIndex(3*i)),
                                );
                              },
                              child:Container(
                                  height: double.infinity, // Match parent height
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration:BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(image: _getImageForIndex(3*i),
                                        fit: BoxFit.contain,))
                              ),),
                            GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => getRouteForIndex(3*i+1)),
                              );
                            },
                             child:Container(
                                  height: double.infinity, // Match parent height
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration:BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: _getImageForIndex(3*i+1),
                                  fit: BoxFit.contain,))
                              ),),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => getRouteForIndex(3*i+2)),
                                );
                              },
                              child:Container(
                                  height: double.infinity, // Match parent height
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration:BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(image: _getImageForIndex(3*i+2),
                                        fit: BoxFit.contain,))
                              ),),
                          ],
                        ) , // Helper method to get color based on index
                    ),
                  ),
                ),
                ),],
          );
        },
      ),


    );
  }

  ImageProvider _getImageForIndex(int index) {
    switch (index % 6) {
      case 0:
        return AssetImage('assets/img1.webp');
      case 1:
        return AssetImage('assets/img2.webp');
      case 2:
        return AssetImage('assets/img3.webp');
      case 3:
        return AssetImage('assets/img4.webp');
      case 4:
        return AssetImage('assets/img5.webp');
      case 5:
        return AssetImage('assets/img6.webp');
      case 6:
        return AssetImage('assets/img7.webp');
      default:
        return AssetImage('assets/img1.jpg');
    }
  }
  Widget getRouteForIndex(int index) {
    switch (index % 6) {
      case 0:
        return  singer1();
      case 1:
        return  singer2();
      case 2:
        return singer3();
      case 3:
        return  singer4();
      case 4:
        return singer5();
      case 5:
        return singer6();
      default:
        return singer7();
    }
  }

}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: 100.0,
            child:DrawerHeader(
              child:Row(
                children: <Widget>[
                     Text(
                      'Welcome',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  IconButton(onPressed: null, icon: Icon(Icons.waving_hand_rounded,color: Colors.white),
                  ), ],), decoration: BoxDecoration(
              color: Colors.transparent,),),),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop(),showDialog(context: context, builder: (context)=>AlertDialog(
              content:Container(
                height: 280.0,
                width: 350.0,
                child:Stack(
                 children: <Widget>[
                  Align(alignment: Alignment(0.0,-0.95), child:Text('Profile',style: TextStyle(color: Colors.white,fontSize: 25.0),),),
                  Align(
                    alignment: Alignment(0.0,-0.45),
                  child:Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/profile.webp'),
                          fit: BoxFit.contain),
                      shape: BoxShape.circle,)
                    ),),
                   Align(
                     alignment: Alignment(0.0,0.3),
                       child:Text('User Name',style:TextStyle(color: Colors.white,fontSize: 15.0,)),
                  ),
                   Align(
                     alignment: Alignment(0.0,0.55),
                     child:Text('emailid@xyz.com',style:TextStyle(color: Colors.white,fontSize: 15.0,)),
                   ),

                ],
              ),
            )))},
          ),
          ListTile(
            leading: Icon(Icons.library_music_rounded),
            title: Text('Library'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.star_rate_rounded),
            title: Text('Rate Us'),
            onTap: () => {showDialog(context: context, builder:(context)=>AlertDialog(
              title: Text('Rate Us'),
              content: RatingBar(
                minRating: 1,
                maxRating: 5,
                allowHalfRating: true,
                ratingWidget: RatingWidget(
                full: Icon(
                  Icons.star_rate_rounded,
                  color: Colors.yellow,
                ),
                  empty: Icon(
                    Icons.star_border_rounded,
                    color: Colors.white,
                  ), half: Icon(Icons.star_half_rounded,
              color: Colors.yellow,)
              ), onRatingUpdate: (rating) { print(rating); },
              tapOnlyMode: true,),
            actions: [
              TextButton(
                child: Text('Ok', style: TextStyle(color: Colors.white)),
                onPressed: () {Navigator.of(context).pop();
                },
              ),
              TextButton(
                child:Text('Cancel',style: TextStyle(color: Colors.white)),
                onPressed:()=>
                {Navigator.pop(context),},
              ),
            ],
            ),
            ),
            }
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}


