import 'package:flutter/material.dart';
import 'widget.dart';

class HeaderContainer extends StatelessWidget {
  final Widget child;
  const HeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CurveEdgesWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: CircularContainer(backgroundColor: Colors.white.withOpacity(0.1),),),
              Positioned(top: -100, right: -300, child: CircularContainer(backgroundColor: Colors.white.withOpacity(0.1),),),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
