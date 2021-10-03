
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DB App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color fontColor = Color.fromRGBO(255, 255, 255, 1.0);
  Color buttonColor = Color.fromRGBO(255, 0, 0, 1.0);
  Color textColor = Color.fromRGBO(0, 0, 0, 1.0);
  Color greyColor = Color.fromRGBO(165, 165, 165, 1.0);

  TextStyle smallTextStyle = TextStyle(
    fontSize: 10,
    color: Color.fromRGBO(0, 0, 0, 1.0),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Plannung",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
            ),
        ),
        backgroundColor: fontColor,
        foregroundColor: fontColor,
        leading: Icon(
          Icons.menu,
          color: textColor,
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.access_time_filled_sharp,
                color: textColor,
              ),
            ),
          ),

        ],
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(child: Container(),),
          Expanded(child: GestureDetector(onTap: (){},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(child: Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Text(
                        'Von',
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ), flex: 5,),
                    Expanded(child: Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Icon(
                        Icons.gps_fixed,
                      ),
                    ), flex: 1,)
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
                  child: Divider(
                    color: textColor,
                  ),
                )
              ],
            )
          ),),
          Expanded(child: GestureDetector(onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Text(
                          'Nach',
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ), flex: 5,),
                      Expanded(child: Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Icon(
                          Icons.gps_fixed,
                        ),
                      ), flex: 1,)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 40, right: 40),
                    child: Divider(
                      color: textColor,
                    ),
                  )
                ],
              )
          ),),
          Expanded(child: Container(
            height: 40,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                color: greyColor,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.calendar_today,
                        color: textColor,
                      ),
                    ), flex: 2,),
                    Expanded(child: Text(
                        "Wed, 3 Sep"
                      ), flex: 4,),
                    Expanded(child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 8),
                      child: VerticalDivider(
                        color: textColor,
                      ),
                    ), flex: 1,),
                    Expanded(child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.access_time_outlined,
                        color: textColor,
                      ),
                    ), flex: 2,),
                    Expanded(child: Text(
                      "Departure: 21:30"
                    ), flex: 4,)
                  ],
                ),
              ),
            )
          ),),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: Padding(padding: EdgeInsets.only(left: 40),child:Icon(
                  Icons.airline_seat_recline_normal_rounded
                )),),
                Expanded(child: Column(

                  children: <Widget>[
                    Expanded(
                    child: Padding(padding: EdgeInsets.only(top: 15),child: Text(
                      "2nd Class | 1 Ad",
                      style: smallTextStyle,
                    ),
                  ),),
                    Expanded(
                      child: Padding(padding: EdgeInsets.only(bottom: 5, top: 0),child: Text(
                        "Show fastest connections",
                        style: smallTextStyle,
                      ),
                      ),),

                  ],
                ), flex: 4),
                Expanded(
                  child: Container(),
                  flex: 3,

                ),
              ],
            ),
          ),
          Expanded(child: Container(

            child: Container(
              height: 30,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  color: buttonColor,
                  child: GestureDetector(
                    onTap: (){},
                    child: Row(children: <Widget>[
                      Expanded(child: Text(
                      "Search",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: fontColor,
                        fontSize: 20,
                      ),
                    )),]
                  )),
                ),
              ),
            ),
          )),
          Expanded(flex:5, child: Container())
        ],
      ),
      );
  }
}
