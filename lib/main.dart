import 'package:flutter/material.dart';
import 'app.dart';
void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   static const String _title = 'Zoom Animation';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const Center(
//           child: MyStatefulWidget(),
//         ),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget>with SingleTickerProviderStateMixin
//  {
//     late AnimationController _controller;
//     late Animation<double> _animation;

//  @override

// void initState() {
//  _controller = AnimationController(duration: const Duration(seconds: 2), vsync: this, );
//  _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

// _animation.addStatusListener((status) {
// if (status == AnimationStatus.completed) {
//   _controller.reverse();
//  }

// else if(status == AnimationStatus.dismissed){
//  _controller.forward();
//  }
// else if(status == AnimationStatus.completed){
//  _controller.stop();

// }
//  });

//  _controller.forward();
//   super.initState();
//    }
//   double target = 50.0;

//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder<double>(
//       tween: Tween<double>(begin: 50, end: target),
//       curve: Curves.linearToEaseOut,
//       duration: const Duration(seconds: 1),
//       builder: (BuildContext context, double size, Widget? child) {
//         return IconButton(
//           iconSize: size,
//           color: Colors.blue,
//           icon: child!,
//           onPressed: () {
//             setState(() {
//               target = target == 50.0 ? 150.0 : 50.0;
//             });
//           },
//         );
//       },
//       child: const Icon(Icons.airplay),
//     );
//   }
// }
