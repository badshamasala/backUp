import 'package:flutter/material.dart';

class ClipPathCheck extends StatefulWidget {
  const ClipPathCheck({Key? key}) : super(key: key);

  @override
  State<ClipPathCheck> createState() => _ClipPathCheckState();
}

class _ClipPathCheckState extends State<ClipPathCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: 200,
              color: Colors.red,
            ),
          ),
          Container(
            color: Colors.yellow,
            child: CustomPaint(
              size: const Size(double.infinity,
                  200), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
          ),
          Container(
            color: Colors.black,
            child: CustomPaint(
              size: const Size(double.infinity,
                  100), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter1(),
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3125000, size.height * 0.2960000);
    path0.lineTo(size.width * 0.3112500, size.height * 0.4000000);
    path0.lineTo(size.width * 0.3750000, size.height * 0.3000000);
    path0.lineTo(size.width * 0.4387500, size.height * 0.3980000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.3020000);
    path0.lineTo(size.width * 0.5612500, size.height * 0.3940000);
    path0.lineTo(size.width * 0.5625000, size.height * 0.3060000);
    path0.lineTo(size.width * 0.4987500, size.height * 0.2000000);
    path0.lineTo(size.width * 0.4387500, size.height * 0.1980000);
    path0.lineTo(size.width * 0.3787500, size.height * 0.2000000);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();

    /* path.moveTo(0, 100); */
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h - 100, w, h);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3287500, size.height * 0.1900000);
    path0.lineTo(size.width * 0.3275000, size.height * 0.6200000);
    path0.lineTo(size.width * 0.3537500, size.height * 0.6200000);
    path0.quadraticBezierTo(size.width * 0.3540500, size.height * 0.4563200,
        size.width * 0.3541500, size.height * 0.4017600);
    path0.quadraticBezierTo(size.width * 0.3657250, size.height * 0.3762400,
        size.width * 0.3837500, size.height * 0.4000000);
    path0.lineTo(size.width * 0.4775750, size.height * 0.6275600);
    path0.lineTo(size.width * 0.5062750, size.height * 0.6255200);
    path0.lineTo(size.width * 0.4112500, size.height * 0.4060000);
    path0.lineTo(size.width * 0.4437875, size.height * 0.4001800);
    path0.quadraticBezierTo(size.width * 0.4604875, size.height * 0.3894000,
        size.width * 0.4834500, size.height * 0.3404000);
    path0.cubicTo(
        size.width * 0.4883000,
        size.height * 0.3195800,
        size.width * 0.4962750,
        size.height * 0.2841000,
        size.width * 0.4882000,
        size.height * 0.2470400);
    path0.quadraticBezierTo(size.width * 0.4872500, size.height * 0.2181800,
        size.width * 0.4572500, size.height * 0.1751200);
    path0.quadraticBezierTo(size.width * 0.4322250, size.height * 0.1497000,
        size.width * 0.4078500, size.height * 0.1479400);
    path0.cubicTo(
        size.width * 0.3942625,
        size.height * 0.1474400,
        size.width * 0.3738750,
        size.height * 0.1479200,
        size.width * 0.3618500,
        size.height * 0.1557000);
    path0.quadraticBezierTo(size.width * 0.3535750, size.height * 0.1642750,
        size.width * 0.3287500, size.height * 0.1900000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
