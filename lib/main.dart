import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Empleado {
  final String idEmpleado;
  final String nombre;
  final String puesto;

  Empleado({
    required this.idEmpleado,
    required this.nombre,
    required this.puesto,
  });
}

class MyApp extends StatelessWidget {
  final Empleado empleado = Empleado(
    idEmpleado: '001',
    nombre: 'Juan Pérez',
    puesto: 'Desarrollador',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Camila Rodriguez Ruiz 1300'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Contenedor con estilos
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        )
                      ],
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                      gradient: LinearGradient(
                        colors: [Colors.blue[100]!, Colors.blue[200]!],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  // Contenido del Stack
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'ID: ${empleado.idEmpleado}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Nombre: ${empleado.nombre}',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[800],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Puesto: ${empleado.puesto}',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[800],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
