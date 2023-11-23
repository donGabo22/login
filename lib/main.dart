// import 'package:flutter/material.dart';
// import 'register_widget.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Page'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Usuario',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Contraseña',
//               ),
//               obscureText: true,
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 // Lógica para el botón "Ingresar"
//                 print('Ingresar');
//               },
//               child: Text('Ingresar'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.blue,
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 // Navegar a la pantalla de registro
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => RegisterWidget()),
//                 );
//               },
//               child: Text('Agregar Nuevo Usuario'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.green,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'register_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.no_meals_ouline, color: Colors.brown), // Icono de cerradura
            SizedBox(width: 10),
            Text('Bienveido'),
          ],
        ),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.person, color: Colors.brown), // Icono de persona
                SizedBox(width: 10),
                Text(
                  'Ingrese su usuario:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.lock, color: Colors.brown), // Icono de cerradura
                SizedBox(width: 10),
                Text(
                  'Ingrese su contraseña:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Lógica para el botón "Ingresar"
                print('Ingresar');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.login), // Icono de inicio de sesión
                  SizedBox(width: 10),
                  Text('Ingresar'),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de registro
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterWidget()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_add), // Icono de agregar persona
                  SizedBox(width: 10),
                  Text('Registrarse'),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.brown,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
