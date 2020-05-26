import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

AssetImage perfilFondo;

TextStyle nombreEstilo;
TextStyle rolEstilo;
TextStyle telEstilo;
TextStyle mailEstilo;

String nombreTexto;
String rolTexto;
String telTexto;
String mailTexto;

void main() {
  asignarVariables();
  runApp(MyApp());
}

void asignarVariables() {
  perfilFondo = new AssetImage("images/nelcy.png");
  nombreEstilo = new TextStyle(
    fontSize: 40,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Pacifico",
  );
  rolEstilo = new TextStyle(
    fontSize: 20,
    color: Colors.teal.shade100,
    fontFamily: "SourceSansPro",
    letterSpacing: 2.5,
    wordSpacing: 1,
  );
  telEstilo = new TextStyle(
    fontSize: 20,
    color: Colors.teal.shade900,
    fontFamily: "SourceSansPro",
  );
  mailEstilo = new TextStyle(
    fontSize: 20,
    color: Colors.teal.shade900,
    fontFamily: "SourceSansPro",
  );

  nombreTexto = "Maria Nelcy";
  rolTexto = "PROJECT MANAGER";
  telTexto = "+57 310 583 0029";
  mailTexto = "manelcy123@gmail.com";
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  backgroundImage: perfilFondo,
                  radius: 50,
                  //backgroundImage: ,
                ),
                Text(nombreTexto, style: nombreEstilo),
                Text(
                  rolTexto,
                  style: rolEstilo,
                ),
                SizedBox(
                  height: 25,
                  width: 150,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 25,
                        color: Colors.teal,
                      ),
                      title: Text(
                        telTexto,
                        style: telEstilo,
                      )),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        size: 25,
                        color: Colors.teal,
                      ),
                      title: Text(
                        mailTexto,
                        style: mailEstilo,
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
