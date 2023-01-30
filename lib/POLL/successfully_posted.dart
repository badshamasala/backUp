import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:sizer/sizer.dart';

class SucessFullyPosted extends StatefulWidget {
  @override
  _SucessFullyPostedState createState() => _SucessFullyPostedState();
}

class _SucessFullyPostedState extends State<SucessFullyPosted>
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
          const Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularRevealAnimation(
                  animation: animation!,
                  child: GradientIcon(
                    Ph.check_circle,
                    150.sp,
                    const LinearGradient(
                      colors: <Color>[Color(0xff0087FF), Color(0xff03194B)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  )),
            ],
          ),
          Text(
            "Successfully",
            style: TextStyle(
              color: primaryColorOfApp,
              fontFamily: "Poppins",
              fontSize: 20.sp,
            ),
          ),
          Text(
            "Posted",
            style: TextStyle(
              color: primaryColorOfApp,
              fontFamily: "Poppins",
              fontSize: 20.sp,
            ),
          ),
          const Spacer(),
          Text(
            "Your Ads is  Successful posted",
            style: TextStyle(
              color: primaryColorOfApp,
              fontFamily: "Poppins",
              fontSize: 15.sp,
            ),
          ),
          const Spacer(),
          Text(
            "we will verify your ads",
            style: TextStyle(
              color: primaryColorOfApp,
              fontFamily: "Poppins",
              fontSize: 15.sp,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                "shortly & live it",
                style: TextStyle(
                  color: primaryColorOfApp,
                  fontFamily: "Poppins",
                  fontSize: 15.sp,
                ),
              ),
                    ],
          ),
          const Spacer(
            flex: 2,
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
        width : size * 1.2,
        height: size * 1.2,
        child:Iconify(
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
