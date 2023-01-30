import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:sizer/sizer.dart';

class PaymentSucessFully extends StatefulWidget {
  @override
  _PaymentSucessFullyState createState() => _PaymentSucessFullyState();
}

class _PaymentSucessFullyState extends State<PaymentSucessFully>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: animationController!,
      curve: Curves.easeIn,
    );
    animationMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularRevealAnimation(
                  animation: animation!,
                  child: GradientIcon(
                    Ph.check_circle,
                    100.sp,
                    const LinearGradient(
                      colors: <Color>[Color(0xff0087FF), Color(0xff03194B)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  )),
            ],
          ),
          Text(
            "Payment",
            style: TextStyle(
                color: const Color(0xff038026),
                fontFamily: "Poppins",
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Successfully",
            style: TextStyle(
                color: const Color(0xff038026),
                fontFamily: "Poppins",
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  animationMethod() {
    if (animationController!.status == AnimationStatus.forward ||
        animationController!.status == AnimationStatus.completed) {
      animationController!.reverse();
    } else {
      animationController!.forward();
    }
  }
}

class GradientIcon extends StatelessWidget {
  GradientIcon(
    this.icon,
    this.size,
    this.gradient,
  );

  final icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: Iconify(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}
