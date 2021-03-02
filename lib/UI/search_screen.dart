import 'package:bloc_l3/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kAppTitle,
      ),
      body: _buildSearch(),
    );
  }

  Container _buildSearch() => Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  autofocus: true,
                  controller: _searchController,
                  decoration: InputDecoration(
                    labelText: "Search City",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: _listViewBuilder(),
          ),
        ],
      ));

  ListView _listViewBuilder() => ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Text(
                "Yangon",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  textStyle: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          );
        },
      );
}
