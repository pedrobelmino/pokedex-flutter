import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromRGBO(144, 238, 144, 0.8);
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              pokemonTitle(),
              textInputSearchPokemon(),
              SizedBox(
                height: 5,
              ),
              lineGradient(),
              pokemonList(),
              lineGradient(),
            ]),
      ),
      bottomNavigationBar: navigationBar(backgroundColor),
    );
  }

  Container lineGradient() {
    return Container(
        height: 2,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.blue, Colors.green])));
  }

  BottomAppBar navigationBar(backgroundColor) => BottomAppBar(
        color: backgroundColor,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 70,
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Image(image: AssetImage('assets/images/pokemon_navbar.png')),
                  Text("Pokemons"),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Image(image: AssetImage('assets/images/movies_navbar.png')),
                  Text("Movies"),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Image(image: AssetImage('assets/images/items_navbar.png')),
                  Text("Items"),
                ],
              )),
            ],
          ),
        ),
      );

  Expanded pokemonList() {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              contentPadding: EdgeInsets.all(8.0),
              title: Text("Bulbasaur"),
              leading: Image(
                  image: AssetImage('assets/images/examples/bulbasaur.png')),
            );
          },
          itemCount: 5,
          scrollDirection: Axis.vertical,
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Color.fromRGBO(0, 0, 0, 0.12),
            );
          },
        ),
      ),
    );
  }

  Padding pokemonTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: const Text(
          "Pokemon",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Padding textInputSearchPokemon() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
                fillColor: Color.fromRGBO(0, 0, 0, 0.12),
                filled: true,
                hintText: "Search",
                focusColor: Color.fromRGBO(0, 0, 0, 0.12),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25.0)))),
      );
}
