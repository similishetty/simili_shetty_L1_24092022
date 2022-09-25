
import 'package:flutter/material.dart';

class CustomSlideTransition extends StatefulWidget {
  final Widget child;
  final bool isButtonSelected;

  const CustomSlideTransition({Key? key,required this.child,required this.isButtonSelected}) : super(key: key);

  @override
  _CustomSlideTransitionState createState() => _CustomSlideTransitionState();
}

class _CustomSlideTransitionState extends State<CustomSlideTransition> with TickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
    _animation = Tween<Offset>(
      begin: widget.isButtonSelected? const Offset(1.0, 0.0):Offset.zero,
      end:  widget.isButtonSelected?Offset.zero:const Offset(1.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: widget.isButtonSelected?Curves.easeIn:Curves.easeOut,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child:widget.child
    );
  }
}
