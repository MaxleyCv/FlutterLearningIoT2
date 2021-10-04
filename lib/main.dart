
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';


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


Widget _destinationStationInput(Widget iconButton, Text hint, Function on_tap_function){
  return Container(
      child: GestureDetector(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Padding(
                padding: EdgeInsets.only(left: 60),
                child: hint,
              ), flex: 5,),
              Expanded(child: Padding(
                padding: EdgeInsets.only(right: 40),
                child: iconButton,
              ), flex: 1,)
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
            child: Divider(
              color: Colors.black,
            ),
          )
        ],
      )
  ),
    height: 60,
  );
}


Widget _classChosingBar(Widget iconButton, Function choose_class,
    Function choose_mod, TextStyle smallTextStyle){
  return Container(
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
  height: 60,);
}

Widget _chooseDateTime(Function date_action, Function time_action,
    Color greyColor, Color textColor, TextStyle calendar_text_style) {
  return Container(
      height: 45,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10)
            )
          ),
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
                  "Mit, 3 Sep",
                  style: calendar_text_style,
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
                  "Ausfahrt: 21:30",
                  style: calendar_text_style,
              ), flex: 4,)
            ],
          ),
        ),
      )
  );
}

Widget _searchButton(Function search, Color buttonColor, Color fontColor){
  return GestureDetector(
    onTap: search(),
    child: Container(
      height: 45,
      child: Container(

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),

          child: Container(
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),

            child: GestureDetector(
                onTap: (){},
                child: Row(children: <Widget>[
                  Expanded(child: Text(
                    "Suchen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: fontColor,
                      fontSize: 18,
                    ),
                  )),]
                )),
          ),
        ),
      ),
    )
  );
}

Widget _chooseTicketOrMap(Color buttonColor, Color greyColor){
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
  child: Row(
    children: <Widget>[
      Expanded(child: Column(
        children: <Widget>[
          Icon(
            Icons.airplane_ticket,
            color: Colors.black,
          ),
          Divider(
            color: buttonColor,
            thickness: 3,
          )
        ],
      )),
      Expanded(child: Column(
        children: <Widget>[
          Icon(
              Icons.map_outlined,
              color: Colors.black,
          ),
          Divider(
            color: greyColor,
          )
        ],),),
    ],
  ));
}

Widget _myTicketsTopText(){
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
      child: Text(
        "Meine Fahrkarten",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}

Widget _myTicketsBottomText(){
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(padding: EdgeInsets.only(top: 20, bottom: 80, left: 20),
      child: Text(
        "Deine Fahrkarten werden hier nach der Booking erscheint",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 14,
        ),
      ),
    ),
  );
}

Widget _interTicketDashline(Color greyColor){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Align(
        child: Container(
          height: 20,
          width: 10,
          decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(10)
              )
          ),
        ),
        alignment: Alignment.centerLeft,
      ),
      DottedLine(
        dashColor: Colors.black,
        lineLength: 300,
      ),
      Align(
        child: Container(
          height: 20,
          width: 10,
          decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10)
              )
          ),
        ),
        alignment: Alignment.centerRight,
      ),
    ],
  );
}

Widget _myTickets(Color greyColor){
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  spreadRadius: -5,
                  blurRadius: 5,
                  offset: Offset(0, 3)
              ),
            ]
        ),
        child: Column(
          children: <Widget>[
            _myTicketsTopText(),
            _interTicketDashline(greyColor),
            _myTicketsBottomText(),
          ],
        ),
      ),
    ),
  );
}

Widget _doubleDot(){
  return Align(
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey,
          ),
        ),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey,
          ),
        )
      ],
    ),
  );
}

class _HomePageState extends State<HomePage> {

  Color fontColor = Color.fromRGBO(255, 255, 255, 1.0);
  Color buttonColor = Color.fromRGBO(255, 0, 0, 1.0);
  Color textColor = Color.fromRGBO(0, 0, 0, 1.0);
  Color greyColor = Color.fromRGBO(219, 219, 219, 1.0);

  TextStyle smallTextStyle = TextStyle(
    fontSize: 10,
    color: Color.fromRGBO(0, 0, 0, 1.0),
  );

  TextStyle hintTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.black,
  );

  TextStyle callendarTextStyle = TextStyle(
    fontSize: 10,
    color: Colors.black,
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
      body: SingleChildScrollView(
        child: Container(
          color: greyColor,
          child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(1, 3)
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 20,
                      ),
                      _destinationStationInput(
                          Icon(Icons.gps_fixed, color: textColor,),
                          Text(
                            "Von",
                            style: hintTextStyle,
                          ),
                              (){}),
                      _destinationStationInput(
                        Icon(Icons.swap_vert_outlined),
                        Text(
                          "Nach",
                          style: hintTextStyle,
                        ),
                            (){},
                      ),
                      _chooseDateTime((){}, (){}, greyColor, textColor, callendarTextStyle),
                      _classChosingBar(Icon(
                        Icons.airline_seat_recline_normal,
                        color: Colors.black,
                      ),
                              (){},
                              (){},
                          smallTextStyle),
                      _searchButton((){}, buttonColor, fontColor),
                      Container(
                        height: 20,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      _chooseTicketOrMap(buttonColor, greyColor),
                      _myTickets(greyColor),
                      _doubleDot(),
                    ],
                  ),
                )
              ]

          ),
        )

    )
    );
  }
}
