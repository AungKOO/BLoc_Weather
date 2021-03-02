import 'package:bloc_l3/UI/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bloc_l3/constants.dart';

class WeatherHome extends StatefulWidget {
  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: kAppTitle,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
              tooltip: "Search",
            ),
          ],
        ),
        body: _buildBody(context));
  }

  Container _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 20.0,
      ),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "YANGON",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                  textStyle: Theme.of(context).textTheme.headline2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Image(
                  width: 150.0,
                  height: 150.0,
                  image: AssetImage("assets/images/icons8-clouds-480.png"),
                ),
              ),
              Text(
                "Cloudy",
                style: GoogleFonts.roboto(
                  color: Colors.deepOrange,
                  textStyle: Theme.of(context).textTheme.headline5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "35° C 🌤",
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.headline4,
                      color: Colors.red,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text("min: 32°C"),
                      Text("max: 37°C"),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
