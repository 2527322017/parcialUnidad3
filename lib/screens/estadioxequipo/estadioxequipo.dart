import 'package:flutter/material.dart';

/*
Hecho por: 
25-2732-2017 
René Castaneda

Parcial unidad 3
 */
void main() {
  runApp(EntidadEstadioxequipo());
}

class EntidadEstadioxequipo extends StatelessWidget {
  const EntidadEstadioxequipo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Estadio por equipos",
      home: FrmEstadioxequipo(),
    );
  }
}

class FrmEstadioxequipo extends StatefulWidget {
  FrmEstadioxequipo({Key? key}) : super(key: key);

  @override
  _FrmEstadioxequipoState createState() => _FrmEstadioxequipoState();
}

class _FrmEstadioxequipoState extends State<FrmEstadioxequipo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mantenimiento Estadio por equipos"),
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
        fieldEquipoId(),
        fieldEstadioId(),
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
        "DATOS DE ESTADIO - EQUIPO",
        style: TextStyle(color: Colors.black, fontSize: 30),
        textAlign: TextAlign.center,
      ));
  //return Text("Datos Personales", style: TextStyle(color: Colors.blue, fontSize: 30), textAlign: TextAlign.left,);
}

Widget fieldEstadioId() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Id Estadio",
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.article)),
    ),
  );
}

Widget fieldEquipoId() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Id Equipo",
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
