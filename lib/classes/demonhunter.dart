import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const playerClass = 'demon-hunter';
const className = 'Demon Hunter';
const classDescription =
    'Forgoing heavy armor, Demon Hunters capitalize on speed, closing the distance quickly to strike enemies with one-handed weapons. However, Illidari must also use their agility defensively to ensure that battles end favorably.';

_redirectOfficial() async {
  const url = 'https://worldofwarcraft.com/en-gb/game/classes/$playerClass';
  const errorMsg = 'Oops! Something went wrong while trying to launch $url';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw errorMsg;
  }
}

_redirectRio() async {
  const url =
      'https://raider.io/mythic-plus-character-rankings/season-bfa-4-post/world/$playerClass/all';
  const errorMsg = 'Oops! Something went wrong while trying to launch $url';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw errorMsg;
  }
}

_redirectWowhead() async {
  const url = 'https://www.wowhead.com/$playerClass';
  const errorMsg = 'Oops! Something went wrong while trying to launch $url';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw errorMsg;
  }
}

class DemonHunter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/demonhunter.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
            alignment: FractionalOffset(0.5, 0.1),
            child: Text('$className',
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'MORPHEUS',
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    shadows: [
                      Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0))
                    ]))),
        Align(
            child: SingleChildScrollView(
                child: Column(
          children: <Widget>[
            Container(
              height: 50,
              color: Color(0xff9c9c9c).withOpacity(0.3),
              child: Align(child: Text('$className 1')),
            ),
            Container(
              height: 50,
              color: Color(0xff9c9c9c).withOpacity(0.3),
              child: Align(child: Text('$className 2')),
            ),
            Container(
              height: 50,
              color: Color(0xff9c9c9c).withOpacity(0.3),
              child:
                  Align(child: Text('$className 3', textAlign: TextAlign.left)),
            ),
          ],
        ))),
        Align(
            alignment: FractionalOffset(0.5, 0.85),
            child: Container(
                height: 75,
                width: 175,
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        onPressed: _redirectOfficial,
                        icon: Image.asset("assets/wowicon.png"),
                      ),
                      IconButton(
                          onPressed: _redirectRio,
                          icon: Image.asset("assets/raiderio.png")),
                      IconButton(
                        onPressed: _redirectWowhead,
                        icon: Image.asset("assets/wowhead.png"),
                      )
                    ]))),
        new Container(
          alignment: FractionalOffset(0.05, 0.995),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Class Selection',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'MORPHEUS',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        new Container(
          alignment: FractionalOffset(0.95, 0.995),
          child: new RaisedButton(
            onPressed: () {},
            child: Text(
              'Add Character',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'MORPHEUS',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}