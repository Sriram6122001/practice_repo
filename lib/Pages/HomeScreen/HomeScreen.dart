// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
const HomeScreen({Key? key}) : super(key: key);

@override
State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>
with SingleTickerProviderStateMixin 
{
late AnimationController _controller;
late Animation<double> _animation;
late Animation<double> _sizeTween;
late Animation<Color?> _colorTween;
late Animation<double>_iconSizeTween;
late Animation<double>_logoSizeTween;
@override
void initState()
{
_controller= AnimationController(duration: Duration(seconds:3),vsync: this,);
_animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
_sizeTween= Tween(begin: 100.0,end: 200.0).animate(_controller);
_logoSizeTween= Tween(begin: 30.0,end: 300.0).animate(_controller);
_iconSizeTween= Tween(begin: 50.0, end: 100.0).animate(_controller);
_colorTween= ColorTween(begin: Colors.grey, end: Colors.blue).animate(_controller);

_controller.forward();
_controller.addListener(() {
  setState(() {
  });
 });

_animation.addStatusListener((status) {
if (status == AnimationStatus.completed) {
 _controller.reverse(); 
 }
else if(status == AnimationStatus.dismissed){
_controller.forward();
}
});

_animation.addStatusListener((status) {
if (status == AnimationStatus.completed) {
 _controller.reverse(); 
 }
else if(status == AnimationStatus.dismissed){
_controller.forward();
}
});

_sizeTween.addStatusListener((status) {
if (status == AnimationStatus.completed) {
 _controller.reverse(); 
 }
else if(status == AnimationStatus.dismissed){
_controller.forward();
}
});

_colorTween.addStatusListener((status) {
if (status == AnimationStatus.completed) {
 _controller.reverse(); 
 }
else if(status == AnimationStatus.dismissed){
_controller.forward();
}
});

_logoSizeTween.addStatusListener((status) {
if (status == AnimationStatus.completed) {
 _controller.reverse(); 
 }
else if(status == AnimationStatus.dismissed){
_controller.forward();
}
});

_iconSizeTween.addStatusListener((status) {
if (status == AnimationStatus.completed) {
 _controller.reverse(); 
 }
else if(status == AnimationStatus.dismissed){
_controller.forward();
}
});

 super.initState();

}

@override
Widget build(BuildContext context) {
return Scaffold(
  // body:   GestureDetector(
  //   onTap:()
  //   {
  //     setState(() {
  //         selected = !selected;
  //     });
  //   },
    
  body: Center(
      child:FadeTransition(
        opacity: _animation,
        child: Stack(
          children:[Center(
            child: AnimatedContainer(
            width: _sizeTween.value,
            height: _sizeTween.value,
            color: _colorTween.value,
            duration: const Duration(seconds:2),
            curve: Curves.easeOutBack,),
          ),
          Center(
            child: AnimatedContainer(width: _logoSizeTween.value,
            height: _logoSizeTween.value, 
            duration:const Duration(seconds:1),
            child: const FlutterLogo(size: 100),
            curve: Curves.easeOutBack,),
          )
            ] 
        ),
      ),)
  
  
);
}
}
