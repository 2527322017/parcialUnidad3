import 'package:flutter/material.dart';
import 'package:flutter_parcial3/screens/equipo/equipo.dart';
import 'package:flutter_parcial3/screens/capitan/capitan.dart';
import 'package:flutter_parcial3/screens/estadio/estadio.dart';
import 'package:flutter_parcial3/screens/coordenada/coordenada.dart';
import 'package:flutter_parcial3/screens/estadioxequipo/estadioxequipo.dart';

/*
Hecho por: 
25-2732-2017 
René Castaneda

Parcial unidad 3
 */
void main() {
  runApp(MyAppJuegos());
}

class MyAppJuegos extends StatelessWidget {
  const MyAppJuegos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tablas Ejercicio 1",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 1 - Parcial Unidad 3 / 2527322017"),
      ),

      //Llamando a un Container externo
      body: cuerpoApp(context),
    );
  }
}

Widget cuerpoApp(context) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://45segundos.com/wp-content/uploads/2020/11/tecnologia-mundial.jpg"),
          fit: BoxFit.cover),
    ),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        mensaje(),
        SizedBox(
          height: 20,
        ),
        btnEquipo(context),
        SizedBox(
          height: 10,
        ),
        btnEstadio(context),
        SizedBox(
          height: 10,
        ),
        btnCapitan(context),
        SizedBox(
          height: 10,
        ),
        btnCoordenada(context),
        SizedBox(
          height: 10,
        ),
        btnEquipoEstadio(context),
      ],
    )),
  );
}

Widget mensaje() {
  return Container(
      alignment: Alignment.topCenter,
      height: 40,
      child: Text(
        "    Seleccione",
        style: TextStyle(color: Colors.black, fontSize: 30),
        textAlign: TextAlign.center,
      ));
  //return Text("Datos Personales", style: TextStyle(color: Colors.blue, fontSize: 30), textAlign: TextAlign.left,);
}

Widget btnEquipo(context) {
  return ButtonTheme(
    buttonColor: Colors.blueAccent,
    minWidth: 500.0,
    height: 50.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrmEquipo()),
        );
      },
      child: Text(
        "Equipos",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}

Widget btnEstadio(context) {
  return ButtonTheme(
    buttonColor: Colors.blueAccent,
    minWidth: 500.0,
    height: 50.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrmEstadio()),
        );
      },
      child: Text(
        "Estadios",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}

Widget btnCapitan(context) {
  return ButtonTheme(
    buttonColor: Colors.blueAccent,
    minWidth: 500.0,
    height: 50.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrmCapitan()),
        );
      },
      child: Text(
        "Capitanes",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}

Widget btnCoordenada(context) {
  return ButtonTheme(
    buttonColor: Colors.blueAccent,
    minWidth: 500.0,
    height: 50.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrmCoordenada()),
        );
      },
      child: Text(
        "Coordenadas",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}

Widget btnEquipoEstadio(context) {
  return ButtonTheme(
    buttonColor: Colors.blueAccent,
    minWidth: 500.0,
    height: 50.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrmEstadioxequipo()),
        );
      },
      child: Text(
        "Estadios por equipo",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}
