import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectmarchh/HomePage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreenone(),
    theme: ThemeData(primarySwatch: Colors.yellow),
  ));
}
class SplashScreenone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenoneState();
}

class SplashScreenoneState extends State {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      navigateAfterSeconds: HomePage(),
      loaderColor: Colors.pink,
      loadingText: const Text("Loading.............."),
      image: Image.asset("assets/images/friendship.png"),
      title: Text("My First App"),
    );
  }
}















//       Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.maxFinite,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: NetworkImage(
//                   'https://cdn.pixabay.com/photo/2016/02/23/07/37/wall-1217083__340.jpg'),
//               fit: BoxFit.cover),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               // Image(
//               //   image: AssetImage("assets/images/paintbucket.png"),
//               //   height: 120,
//               //   width: 120,
//               // ),
//               Icon(
//                 Icons.map,
//                 size: 50,
//                 color: Colors.yellow,
//               ),
//               Text(
//                 "My App",
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
