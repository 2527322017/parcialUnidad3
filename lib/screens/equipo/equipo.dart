import 'package:flutter/material.dart';

/*
Hecho por: 
25-2732-2017 
René Castaneda

Parcial unidad 3
 */
void main() {
  runApp(EntidadEquipo());
}

class EntidadEquipo extends StatelessWidget {
  const EntidadEquipo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Equipos",
      home: FrmEquipo(),
    );
  }
}

class FrmEquipo extends StatefulWidget {
  FrmEquipo({Key? key}) : super(key: key);

  @override
  _FrmEquipoState createState() => _FrmEquipoState();
}

class _FrmEquipoState extends State<FrmEquipo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mantenimiento equipos"),
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
          height: 10,
        ),
        fieldNombre(),
        fieldEntrenador(),
        fieldEnprimera(),
        fieldWeb(),
        btnGuardar(),
        SizedBox(
          height: 10,
        ),
        btnVolver(context),
      ],
    )),
  );
}

Widget mensaje() {
  return Container(
      alignment: Alignment.topCenter,
      height: 40,
      child: Text(
        "DATOS DEL EQUIPO",
        style: TextStyle(color: Colors.black, fontSize: 30),
        textAlign: TextAlign.center,
      ));
  //return Text("Datos Personales", style: TextStyle(color: Colors.blue, fontSize: 30), textAlign: TextAlign.left,);
}

Widget fieldNombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Nombre",
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.article)),
    ),
  );
}

Widget fieldEntrenador() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Entrenador",
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.article)),
    ),
  );
}

Widget fieldEnprimera() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Primera",
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.article)),
    ),
  );
}

Widget fieldWeb() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Web",
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.article)),
    ),
  );
}

Widget btnGuardar() {
  return ButtonTheme(
    buttonColor: Colors.blueAccent,
    minWidth: 560.0,
    height: 50.0,
    child: RaisedButton(
      onPressed: () {},
      child: Text(
        "Guardar",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}

Widget btnVolver(context) {
  return ButtonTheme(
    buttonColor: Colors.redAccent,
    minWidth: 560.0,
    height: 50.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        "Volver a Inicio",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}
