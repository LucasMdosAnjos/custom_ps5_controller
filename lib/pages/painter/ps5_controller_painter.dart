import 'dart:ui';

import 'package:flutter/material.dart';

class Ps5ControllerPainter extends CustomPainter {
  final Color baseColor;
  final Animation<double> animation;
  final bool enableType1CustomDesign;
  final bool enableType2CustomDesign;

  Ps5ControllerPainter(
      {required this.animation,
      required this.baseColor,
      required this.enableType1CustomDesign,
      required this.enableType2CustomDesign})
      : super(repaint: animation);

  Path createAnimatedPath(
    Path originalPath,
    double animationPercent,
  ) {
    final totalLength = originalPath
        .computeMetrics()
        .fold(0.0, (double prev, PathMetric metric) => prev + metric.length);

    final currentLength = totalLength * animationPercent;

    return extractPathUntilLength(originalPath, currentLength);
  }

  Path extractPathUntilLength(
    Path originalPath,
    double length,
  ) {
    var currentLength = 0.0;

    final path = Path();

    var metricsIterator = originalPath.computeMetrics().iterator;

    while (metricsIterator.moveNext()) {
      var metric = metricsIterator.current;

      var nextLength = currentLength + metric.length;

      final isLastSegment = nextLength > length;
      if (isLastSegment) {
        final remainingLength = length - currentLength;
        final pathSegment = metric.extractPath(0.0, remainingLength);

        path.addPath(pathSegment, Offset.zero);
        break;
      } else {
        final pathSegment = metric.extractPath(0.0, metric.length);
        path.addPath(pathSegment, Offset.zero);
      }

      currentLength = nextLength;
    }

    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final animationPercent = animation.value;
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8904801, size.height * 0.1934400);
    path_0.arcToPoint(Offset(size.width * 0.8804801, size.height * 0.1822400),
        radius: Radius.elliptical(
            size.width * 0.03000000, size.height * 0.02400000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8690801, size.height * 0.1791200),
        radius: Radius.elliptical(
            size.width * 0.03000000, size.height * 0.02400000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.8659801, size.height * 0.1786400);
    path_0.lineTo(size.width * 0.8659801, size.height * 0.1686400);
    path_0.cubicTo(
        size.width * 0.8659801,
        size.height * 0.1686400,
        size.width * 0.8325801,
        size.height * 0.1509600,
        size.width * 0.8119801,
        size.height * 0.1484800);
    path_0.cubicTo(
        size.width * 0.7913801,
        size.height * 0.1460000,
        size.width * 0.7446801,
        size.height * 0.1431200,
        size.width * 0.7412801,
        size.height * 0.1484800);
    path_0.arcToPoint(Offset(size.width * 0.7375801, size.height * 0.1618400),
        radius: Radius.elliptical(
            size.width * 0.05530000, size.height * 0.04424000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.7221801,
        size.height * 0.1602400,
        size.width * 0.7066801,
        size.height * 0.1588000,
        size.width * 0.6912801,
        size.height * 0.1574400);
    path_0.arcToPoint(Offset(size.width * 0.6841801, size.height * 0.1545600),
        radius: Radius.elliptical(
            size.width * 0.02000000, size.height * 0.01600000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6486801, size.height * 0.1502400),
        radius:
            Radius.elliptical(size.width * 0.1891000, size.height * 0.1512800),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.6209801, size.height * 0.1492000);
    path_0.lineTo(size.width * 0.5627801, size.height * 0.1471200);
    path_0.lineTo(size.width * 0.4412801, size.height * 0.1471200);
    path_0.lineTo(size.width * 0.3831801, size.height * 0.1492000);
    path_0.lineTo(size.width * 0.3554801, size.height * 0.1502400);
    path_0.arcToPoint(Offset(size.width * 0.3198801, size.height * 0.1545600),
        radius:
            Radius.elliptical(size.width * 0.1911000, size.height * 0.1528800),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.3129801, size.height * 0.1574400),
        radius: Radius.elliptical(
            size.width * 0.01880000, size.height * 0.01504000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.2974801,
        size.height * 0.1588000,
        size.width * 0.2819801,
        size.height * 0.1602400,
        size.width * 0.2664801,
        size.height * 0.1618400);
    path_0.arcToPoint(Offset(size.width * 0.2627801, size.height * 0.1484800),
        radius: Radius.elliptical(
            size.width * 0.05240000, size.height * 0.04192000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.2594801,
        size.height * 0.1431200,
        size.width * 0.2127801,
        size.height * 0.1460000,
        size.width * 0.1921801,
        size.height * 0.1484800);
    path_0.cubicTo(
        size.width * 0.1715801,
        size.height * 0.1509600,
        size.width * 0.1376801,
        size.height * 0.1686400,
        size.width * 0.1376801,
        size.height * 0.1686400);
    path_0.lineTo(size.width * 0.1376801, size.height * 0.1786400);
    path_0.lineTo(size.width * 0.1344801, size.height * 0.1791200);
    path_0.arcToPoint(Offset(size.width * 0.1231801, size.height * 0.1822400),
        radius: Radius.elliptical(
            size.width * 0.03000000, size.height * 0.02400000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.1131801, size.height * 0.1934400),
        radius: Radius.elliptical(
            size.width * 0.03130000, size.height * 0.02504000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.05018010,
        size.height * 0.3073600,
        size.width * 0.008780100,
        size.height * 0.4320000,
        size.width * 0.02318010,
        size.height * 0.5561600);
    path_0.cubicTo(
        size.width * 0.02648010,
        size.height * 0.5852801,
        size.width * 0.03488010,
        size.height * 0.6168800,
        size.width * 0.06318010,
        size.height * 0.6352000);
    path_0.arcToPoint(Offset(size.width * 0.1248801, size.height * 0.6524800),
        radius:
            Radius.elliptical(size.width * 0.1150000, size.height * 0.09200000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.1474801, size.height * 0.6545600),
        radius:
            Radius.elliptical(size.width * 0.2000000, size.height * 0.1600000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.1565801, size.height * 0.6532000),
        radius: Radius.elliptical(
            size.width * 0.02000000, size.height * 0.01600000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.1630801,
        size.height * 0.6503200,
        size.width * 0.1655801,
        size.height * 0.6407199,
        size.width * 0.1684801,
        size.height * 0.6356800);
    path_0.cubicTo(
        size.width * 0.1743801,
        size.height * 0.6255200,
        size.width * 0.1802801,
        size.height * 0.6153600,
        size.width * 0.1859801,
        size.height * 0.6051200);
    path_0.cubicTo(
        size.width * 0.1969801,
        size.height * 0.5851200,
        size.width * 0.2072801,
        size.height * 0.5651200,
        size.width * 0.2159801,
        size.height * 0.5443200);
    path_0.arcToPoint(Offset(size.width * 0.2359801, size.height * 0.5048800),
        radius:
            Radius.elliptical(size.width * 0.2782000, size.height * 0.2225600),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.2454801, size.height * 0.4939200),
        radius: Radius.elliptical(
            size.width * 0.09850000, size.height * 0.07880000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.2465801, size.height * 0.4928800);
    path_0.arcToPoint(Offset(size.width * 0.2775801, size.height * 0.4761600),
        radius: Radius.elliptical(
            size.width * 0.08630000, size.height * 0.06904000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.2775801, size.height * 0.4761600);
    path_0.arcToPoint(Offset(size.width * 0.3021801, size.height * 0.4738400),
        radius: Radius.elliptical(
            size.width * 0.08820000, size.height * 0.07056000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.3054801, size.height * 0.4738400);
    path_0.lineTo(size.width * 0.3161801, size.height * 0.4738400);
    path_0.lineTo(size.width * 0.3323801, size.height * 0.4757600);
    path_0.arcToPoint(Offset(size.width * 0.4183801, size.height * 0.4767200),
        radius:
            Radius.elliptical(size.width * 0.6662000, size.height * 0.5329600),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.5846801, size.height * 0.4767200);
    path_0.arcToPoint(Offset(size.width * 0.6706801, size.height * 0.4757600),
        radius:
            Radius.elliptical(size.width * 0.6667000, size.height * 0.5333600),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.6760801,
        size.height * 0.4752000,
        size.width * 0.6813801,
        size.height * 0.4744800,
        size.width * 0.6867801,
        size.height * 0.4738400);
    path_0.lineTo(size.width * 0.6975800, size.height * 0.4738400);
    path_0.lineTo(size.width * 0.7007800, size.height * 0.4738400);
    path_0.arcToPoint(Offset(size.width * 0.7254800, size.height * 0.4761600),
        radius: Radius.elliptical(
            size.width * 0.08930000, size.height * 0.07144000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.7254800, size.height * 0.4761600);
    path_0.arcToPoint(Offset(size.width * 0.7564800, size.height * 0.4928800),
        radius: Radius.elliptical(
            size.width * 0.08550000, size.height * 0.06840000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.7576800, size.height * 0.4940000);
    path_0.arcToPoint(Offset(size.width * 0.7676800, size.height * 0.5048800),
        radius: Radius.elliptical(
            size.width * 0.09200000, size.height * 0.07360000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7876800, size.height * 0.5443200),
        radius:
            Radius.elliptical(size.width * 0.2782000, size.height * 0.2225600),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.7966800,
        size.height * 0.5649600,
        size.width * 0.8069800,
        size.height * 0.5851200,
        size.width * 0.8176800,
        size.height * 0.6051200);
    path_0.cubicTo(
        size.width * 0.8233800,
        size.height * 0.6153600,
        size.width * 0.8291800,
        size.height * 0.6255200,
        size.width * 0.8350800,
        size.height * 0.6356800);
    path_0.cubicTo(
        size.width * 0.8379800,
        size.height * 0.6407200,
        size.width * 0.8404800,
        size.height * 0.6503200,
        size.width * 0.8470800,
        size.height * 0.6532000);
    path_0.arcToPoint(Offset(size.width * 0.8560800, size.height * 0.6545600),
        radius: Radius.elliptical(
            size.width * 0.02000000, size.height * 0.01600000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8786799, size.height * 0.6524800),
        radius:
            Radius.elliptical(size.width * 0.1946000, size.height * 0.1556800),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.9403799, size.height * 0.6352000),
        radius:
            Radius.elliptical(size.width * 0.1147000, size.height * 0.09176000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.9689799,
        size.height * 0.6168800,
        size.width * 0.9772799,
        size.height * 0.5852800,
        size.width * 0.9803799,
        size.height * 0.5561600);
    path_0.cubicTo(
        size.width * 0.9951799,
        size.height * 0.4320000,
        size.width * 0.9536799,
        size.height * 0.3073600,
        size.width * 0.8904799,
        size.height * 0.1934400);
    path_0.close();
    path_0.moveTo(size.width * 0.3175801, size.height * 0.1651200);
    path_0.arcToPoint(Offset(size.width * 0.3226801, size.height * 0.1622400),
        radius: Radius.elliptical(
            size.width * 0.008400000, size.height * 0.006720000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3558801, size.height * 0.1582400),
        radius:
            Radius.elliptical(size.width * 0.1846000, size.height * 0.1476800),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.3836801, size.height * 0.1572000);
    path_0.lineTo(size.width * 0.4412801, size.height * 0.1551200);
    path_0.lineTo(size.width * 0.5625801, size.height * 0.1551200);
    path_0.lineTo(size.width * 0.6203801, size.height * 0.1572000);
    path_0.lineTo(size.width * 0.6480801, size.height * 0.1582400);
    path_0.arcToPoint(Offset(size.width * 0.6811801, size.height * 0.1622400),
        radius:
            Radius.elliptical(size.width * 0.1825000, size.height * 0.1460000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6862801, size.height * 0.1651200),
        radius: Radius.elliptical(
            size.width * 0.008400000, size.height * 0.006720000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6886801, size.height * 0.1857600),
        radius: Radius.elliptical(
            size.width * 0.04490000, size.height * 0.03592000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.6886801,
        size.height * 0.1873600,
        size.width * 0.6862801,
        size.height * 0.1990400,
        size.width * 0.6662801,
        size.height * 0.2715200);
    path_0.lineTo(size.width * 0.6651801, size.height * 0.2755200);
    path_0.cubicTo(
        size.width * 0.6634801,
        size.height * 0.2840000,
        size.width * 0.6551801,
        size.height * 0.3116000,
        size.width * 0.6251801,
        size.height * 0.3126400);
    path_0.lineTo(size.width * 0.3794801, size.height * 0.3126400);
    path_0.cubicTo(
        size.width * 0.3484801,
        size.height * 0.3116000,
        size.width * 0.3404801,
        size.height * 0.2840000,
        size.width * 0.3386801,
        size.height * 0.2753600);
    path_0.cubicTo(
        size.width * 0.3386801,
        size.height * 0.2753600,
        size.width * 0.3386801,
        size.height * 0.2736800,
        size.width * 0.3375801,
        size.height * 0.2712800);
    path_0.cubicTo(
        size.width * 0.3182801,
        size.height * 0.2015200,
        size.width * 0.3153801,
        size.height * 0.1877600,
        size.width * 0.3152801,
        size.height * 0.1854400);
    path_0.arcToPoint(Offset(size.width * 0.3175801, size.height * 0.1651200),
        radius: Radius.elliptical(
            size.width * 0.04410000, size.height * 0.03528000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.3475801, size.height * 0.4411200);
    path_0.arcToPoint(Offset(size.width * 0.4036801, size.height * 0.3962400),
        radius: Radius.elliptical(
            size.width * 0.05610000, size.height * 0.04488000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3477801, size.height * 0.4411200),
        radius: Radius.elliptical(
            size.width * 0.05610000, size.height * 0.04488000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.3475801, size.height * 0.4411200);
    path_0.close();
    path_0.moveTo(size.width * 0.4619801, size.height * 0.3393600);
    path_0.arcToPoint(Offset(size.width * 0.4675801, size.height * 0.3438400),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4619801, size.height * 0.3393600),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.4759801, size.height * 0.3560800);
    path_0.arcToPoint(Offset(size.width * 0.4809801, size.height * 0.3520000),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4754801, size.height * 0.3560800),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.4759801, size.height * 0.3560800);
    path_0.close();
    path_0.moveTo(size.width * 0.5159801, size.height * 0.3516000);
    path_0.arcToPoint(Offset(size.width * 0.5104801, size.height * 0.3471200),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5158801, size.height * 0.3520000),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.5159801, size.height * 0.3516000);
    path_0.close();
    path_0.moveTo(size.width * 0.5132801, size.height * 0.3393600);
    path_0.arcToPoint(Offset(size.width * 0.5188801, size.height * 0.3438400),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5131801, size.height * 0.3393600),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.5132801, size.height * 0.3393600);
    path_0.close();
    path_0.moveTo(size.width * 0.5019801, size.height * 0.3440000);
    path_0.arcToPoint(Offset(size.width * 0.5075801, size.height * 0.3395200),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5019801, size.height * 0.3440000),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.4992801, size.height * 0.3520000);
    path_0.arcToPoint(Offset(size.width * 0.4936801, size.height * 0.3475200),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4991801, size.height * 0.3520000),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.4992801, size.height * 0.3520000);
    path_0.close();
    path_0.moveTo(size.width * 0.4852801, size.height * 0.3440000);
    path_0.arcToPoint(Offset(size.width * 0.4908801, size.height * 0.3395200),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4851801, size.height * 0.3440000),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.4852801, size.height * 0.3440000);
    path_0.close();
    path_0.moveTo(size.width * 0.5219801, size.height * 0.4409600);
    path_0.cubicTo(
        size.width * 0.5204801,
        size.height * 0.4409600,
        size.width * 0.5019801,
        size.height * 0.4409600,
        size.width * 0.5019801,
        size.height * 0.4409600);
    path_0.cubicTo(
        size.width * 0.5019801,
        size.height * 0.4409600,
        size.width * 0.4837801,
        size.height * 0.4409600,
        size.width * 0.4819801,
        size.height * 0.4409600);
    path_0.cubicTo(
        size.width * 0.4801801,
        size.height * 0.4409600,
        size.width * 0.4792801,
        size.height * 0.4387200,
        size.width * 0.4792801,
        size.height * 0.4368000);
    path_0.cubicTo(
        size.width * 0.4792801,
        size.height * 0.4348800,
        size.width * 0.4812801,
        size.height * 0.4331200,
        size.width * 0.4824801,
        size.height * 0.4331200);
    path_0.lineTo(size.width * 0.5207801, size.height * 0.4331200);
    path_0.cubicTo(
        size.width * 0.5220801,
        size.height * 0.4331200,
        size.width * 0.5239801,
        size.height * 0.4349600,
        size.width * 0.5239801,
        size.height * 0.4368000);
    path_0.cubicTo(
        size.width * 0.5239801,
        size.height * 0.4386400,
        size.width * 0.5231801,
        size.height * 0.4407200,
        size.width * 0.5219801,
        size.height * 0.4409600);
    path_0.close();
    path_0.moveTo(size.width * 0.5287801, size.height * 0.3560800);
    path_0.arcToPoint(Offset(size.width * 0.5343801, size.height * 0.3516000),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5284801, size.height * 0.3560800),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.5287801, size.height * 0.3560800);
    path_0.close();
    path_0.moveTo(size.width * 0.5368801, size.height * 0.3440000);
    path_0.arcToPoint(Offset(size.width * 0.5424801, size.height * 0.3395200),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5368801, size.height * 0.3440000),
        radius: Radius.elliptical(
            size.width * 0.005600000, size.height * 0.004480000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.6560801, size.height * 0.4411200);
    path_0.arcToPoint(Offset(size.width * 0.7119801, size.height * 0.3962400),
        radius: Radius.elliptical(
            size.width * 0.05610000, size.height * 0.04488000),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6560801, size.height * 0.4411200),
        radius: Radius.elliptical(
            size.width * 0.05610000, size.height * 0.04488000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.9708801, size.height * 0.5553600);
    path_0.cubicTo(
        size.width * 0.9678801,
        size.height * 0.5806400,
        size.width * 0.9608801,
        size.height * 0.6113600,
        size.width * 0.9342801,
        size.height * 0.6289600);
    path_0.arcToPoint(Offset(size.width * 0.8963801, size.height * 0.6422400),
        radius: Radius.elliptical(
            size.width * 0.08710000, size.height * 0.06968000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8910801, size.height * 0.6362400),
        radius: Radius.elliptical(
            size.width * 0.06190000, size.height * 0.04952000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8850800, size.height * 0.6240000),
        radius:
            Radius.elliptical(size.width * 0.1012000, size.height * 0.08096000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.8817801,
        size.height * 0.6169600,
        size.width * 0.8779800,
        size.height * 0.6097600,
        size.width * 0.8750800,
        size.height * 0.6024800);
    path_0.cubicTo(
        size.width * 0.8739800,
        size.height * 0.5991200,
        size.width * 0.8530800,
        size.height * 0.5464800,
        size.width * 0.8505800,
        size.height * 0.5424800);
    path_0.cubicTo(
        size.width * 0.8480800,
        size.height * 0.5384800,
        size.width * 0.8305800,
        size.height * 0.5036000,
        size.width * 0.8272800,
        size.height * 0.4984800);
    path_0.cubicTo(
        size.width * 0.8239800,
        size.height * 0.4933600,
        size.width * 0.8008800,
        size.height * 0.4520000,
        size.width * 0.7989800,
        size.height * 0.4489600);
    path_0.arcToPoint(Offset(size.width * 0.7282800, size.height * 0.3562400),
        radius:
            Radius.elliptical(size.width * 0.6152000, size.height * 0.4921600),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.7114800,
        size.height * 0.3402400,
        size.width * 0.6851800,
        size.height * 0.3228000,
        size.width * 0.6797800,
        size.height * 0.3011200);
    path_0.cubicTo(
        size.width * 0.6786800,
        size.height * 0.2967200,
        size.width * 0.6769800,
        size.height * 0.2811200,
        size.width * 0.6769800,
        size.height * 0.2811200);
    path_0.arcToPoint(Offset(size.width * 0.6705800, size.height * 0.3013600),
        radius:
            Radius.elliptical(size.width * 0.1133000, size.height * 0.09064000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6542800, size.height * 0.3169600),
        radius:
            Radius.elliptical(size.width * 0.1294000, size.height * 0.1035200),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6294800, size.height * 0.3269600),
        radius: Radius.elliptical(
            size.width * 0.06530000, size.height * 0.05224000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.6217800,
        size.height * 0.3269600,
        size.width * 0.5014800,
        size.height * 0.3269600,
        size.width * 0.5014800,
        size.height * 0.3269600);
    path_0.cubicTo(
        size.width * 0.5014800,
        size.height * 0.3269600,
        size.width * 0.3814800,
        size.height * 0.3269600,
        size.width * 0.3733800,
        size.height * 0.3269600);
    path_0.arcToPoint(Offset(size.width * 0.3486800, size.height * 0.3169600),
        radius: Radius.elliptical(
            size.width * 0.06480000, size.height * 0.05184000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3322800, size.height * 0.3013600),
        radius:
            Radius.elliptical(size.width * 0.1237000, size.height * 0.09896000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3258800, size.height * 0.2811200),
        radius:
            Radius.elliptical(size.width * 0.1192000, size.height * 0.09536000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.3258800,
        size.height * 0.2811200,
        size.width * 0.3242800,
        size.height * 0.2971200,
        size.width * 0.3230800,
        size.height * 0.3011200);
    path_0.cubicTo(
        size.width * 0.3176800,
        size.height * 0.3228000,
        size.width * 0.2914800,
        size.height * 0.3399200,
        size.width * 0.2746800,
        size.height * 0.3562400);
    path_0.arcToPoint(Offset(size.width * 0.2039800, size.height * 0.4489600),
        radius:
            Radius.elliptical(size.width * 0.6100000, size.height * 0.4880000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.2019800,
        size.height * 0.4520000,
        size.width * 0.1783800,
        size.height * 0.4933600,
        size.width * 0.1755800,
        size.height * 0.4984800);
    path_0.cubicTo(
        size.width * 0.1727800,
        size.height * 0.5036000,
        size.width * 0.1547800,
        size.height * 0.5384800,
        size.width * 0.1522800,
        size.height * 0.5424800);
    path_0.cubicTo(
        size.width * 0.1497800,
        size.height * 0.5464800,
        size.width * 0.1289800,
        size.height * 0.5991200,
        size.width * 0.1278800,
        size.height * 0.6024800);
    path_0.cubicTo(
        size.width * 0.1253800,
        size.height * 0.6097600,
        size.width * 0.1215800,
        size.height * 0.6169601,
        size.width * 0.1178800,
        size.height * 0.6240000);
    path_0.arcToPoint(Offset(size.width * 0.1118800, size.height * 0.6362400),
        radius:
            Radius.elliptical(size.width * 0.1130000, size.height * 0.09040000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.1065800, size.height * 0.6422400),
        radius: Radius.elliptical(
            size.width * 0.06190000, size.height * 0.04952000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.06868000, size.height * 0.6289600),
        radius: Radius.elliptical(
            size.width * 0.08650000, size.height * 0.06920000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.04178000,
        size.height * 0.6117600,
        size.width * 0.03498000,
        size.height * 0.5809600,
        size.width * 0.03208000,
        size.height * 0.5553600);
    path_0.cubicTo(
        size.width * 0.01958000,
        size.height * 0.4470400,
        size.width * 0.04958000,
        size.height * 0.3263200,
        size.width * 0.1220800,
        size.height * 0.1966400);
    path_0.arcToPoint(Offset(size.width * 0.1281800, size.height * 0.1886400),
        radius: Radius.elliptical(
            size.width * 0.02280000, size.height * 0.01824000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.1359800, size.height * 0.1867200),
        radius: Radius.elliptical(
            size.width * 0.02560000, size.height * 0.02048000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.1918800,
        size.height * 0.1777600,
        size.width * 0.2488800,
        size.height * 0.1707200,
        size.width * 0.3059800,
        size.height * 0.1658400);
    path_0.arcToPoint(Offset(size.width * 0.3049800, size.height * 0.1855200),
        radius: Radius.elliptical(
            size.width * 0.07350000, size.height * 0.05880000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.3049800,
        size.height * 0.1880000,
        size.width * 0.3072800,
        size.height * 0.1996800,
        size.width * 0.3274800,
        size.height * 0.2728000);
    path_0.cubicTo(
        size.width * 0.3281800,
        size.height * 0.2751200,
        size.width * 0.3285800,
        size.height * 0.2765600,
        size.width * 0.3285800,
        size.height * 0.2766400);
    path_0.cubicTo(
        size.width * 0.3338800,
        size.height * 0.3027200,
        size.width * 0.3530800,
        size.height * 0.3195200,
        size.width * 0.3785800,
        size.height * 0.3204000);
    path_0.lineTo(size.width * 0.6248800, size.height * 0.3204000);
    path_0.cubicTo(
        size.width * 0.6504800,
        size.height * 0.3195200,
        size.width * 0.6696800,
        size.height * 0.3027200,
        size.width * 0.6748800,
        size.height * 0.2768000);
    path_0.cubicTo(
        size.width * 0.6748800,
        size.height * 0.2768000,
        size.width * 0.6748800,
        size.height * 0.2752000,
        size.width * 0.6759800,
        size.height * 0.2729600);
    path_0.cubicTo(
        size.width * 0.6959800,
        size.height * 0.1996800,
        size.width * 0.6985800,
        size.height * 0.1880000,
        size.width * 0.6985800,
        size.height * 0.1858400);
    path_0.arcToPoint(Offset(size.width * 0.6975799, size.height * 0.1658400),
        radius: Radius.elliptical(
            size.width * 0.07860000, size.height * 0.06288000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.7544799,
        size.height * 0.1708000,
        size.width * 0.8113799,
        size.height * 0.1777600,
        size.width * 0.8675799,
        size.height * 0.1867200);
    path_0.arcToPoint(Offset(size.width * 0.8752799, size.height * 0.1886400),
        radius: Radius.elliptical(
            size.width * 0.02410000, size.height * 0.01928000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8814799, size.height * 0.1966400),
        radius: Radius.elliptical(
            size.width * 0.02380000, size.height * 0.01904000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.9532799,
        size.height * 0.3263200,
        size.width * 0.9834799,
        size.height * 0.4470400,
        size.width * 0.9708799,
        size.height * 0.5553600);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = baseColor.withOpacity(1.0);
    if (animation.value < 1.0) {
      final path_0Animated = createAnimatedPath(path_0, animationPercent);
      canvas.drawPath(path_0Animated, Paint()..style = PaintingStyle.stroke);
    } else {
      final path_0Animated = createAnimatedPath(path_0, animationPercent);
      canvas.drawPath(path_0Animated, paint_0_fill);
    }

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = baseColor.withOpacity(1.0);

    if (animation.value < 1.0) {
      canvas.drawCircle(
          Offset(size.width * 0.7291000, size.height * 0.2904000),
          size.width * 0.03280000 * animation.value,
          Paint()..style = PaintingStyle.stroke);
    } else {
      canvas.drawCircle(Offset(size.width * 0.7291000, size.height * 0.2904000),
          size.width * 0.03280000, paint_1_fill);
    }

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = baseColor.withOpacity(1.0);
    if (animation.value < 1.0) {
      canvas.drawCircle(
          Offset(size.width * 0.8002000, size.height * 0.2339200),
          size.width * 0.03270000 * animation.value,
          Paint()..style = PaintingStyle.stroke);
    } else {
      canvas.drawCircle(Offset(size.width * 0.8002000, size.height * 0.2339200),
          size.width * 0.03270000, paint_2_fill);
    }

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = baseColor.withOpacity(1.0);
    if (animation.value < 1.0) {
      canvas.drawCircle(
          Offset(size.width * 0.8708000, size.height * 0.2898400),
          size.width * 0.03210000 * animation.value,
          Paint()..style = PaintingStyle.stroke);
    } else {
      canvas.drawCircle(Offset(size.width * 0.8708000, size.height * 0.2898400),
          size.width * 0.03210000, paint_3_fill);
    }

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = baseColor.withOpacity(1.0);
    if (animation.value < 1.0) {
      canvas.drawCircle(
          Offset(size.width * 0.8003000, size.height * 0.3465600),
          size.width * 0.03280000 * animation.value,
          Paint()..style = PaintingStyle.stroke);
    } else {
      canvas.drawCircle(Offset(size.width * 0.8003000, size.height * 0.3465600),
          size.width * 0.03280000, paint_4_fill);
    }

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7242000, size.height * 0.1877600);
    path_5.arcToPoint(Offset(size.width * 0.7200000, size.height * 0.1892800),
        radius: Radius.elliptical(
            size.width * 0.008600000, size.height * 0.006880000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_5.arcToPoint(Offset(size.width * 0.7168000, size.height * 0.1936800),
        radius: Radius.elliptical(
            size.width * 0.01660000, size.height * 0.01328000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_5.arcToPoint(Offset(size.width * 0.7120000, size.height * 0.2176800),
        radius: Radius.elliptical(
            size.width * 0.09100000, size.height * 0.07280000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_5.cubicTo(
        size.width * 0.7140000,
        size.height * 0.2236000,
        size.width * 0.7196000,
        size.height * 0.2233600,
        size.width * 0.7196000,
        size.height * 0.2233600);
    path_5.arcToPoint(Offset(size.width * 0.7276000, size.height * 0.2233600),
        radius: Radius.elliptical(
            size.width * 0.02300000, size.height * 0.01840000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_5.arcToPoint(Offset(size.width * 0.7326999, size.height * 0.2189600),
        radius: Radius.elliptical(
            size.width * 0.01000000, size.height * 0.008000000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_5.arcToPoint(Offset(size.width * 0.7367999, size.height * 0.2042400),
        radius:
            Radius.elliptical(size.width * 0.1677000, size.height * 0.1341600),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_5.arcToPoint(Offset(size.width * 0.7381999, size.height * 0.1926400),
        radius: Radius.elliptical(
            size.width * 0.05770000, size.height * 0.04616000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_5.cubicTo(
        size.width * 0.7374999,
        size.height * 0.1920000,
        size.width * 0.7363999,
        size.height * 0.1877600,
        size.width * 0.7241999,
        size.height * 0.1877600);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = baseColor.withOpacity(1.0);
    if (animation.value < 1.0) {
      final path_5Animated = createAnimatedPath(path_5, animationPercent);
      canvas.drawPath(path_5Animated, Paint()..style = PaintingStyle.stroke);
    } else {
      final path_5Animated = createAnimatedPath(path_5, animationPercent);
      canvas.drawPath(path_5Animated, paint_5_fill);
    }

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.2758000, size.height * 0.1877600);
    path_6.arcToPoint(Offset(size.width * 0.2800000, size.height * 0.1892800),
        radius: Radius.elliptical(
            size.width * 0.008600000, size.height * 0.006880000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.arcToPoint(Offset(size.width * 0.2832000, size.height * 0.1936800),
        radius: Radius.elliptical(
            size.width * 0.01660000, size.height * 0.01328000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.arcToPoint(Offset(size.width * 0.2880000, size.height * 0.2176800),
        radius: Radius.elliptical(
            size.width * 0.09360000, size.height * 0.07488000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.cubicTo(
        size.width * 0.2860000,
        size.height * 0.2240000,
        size.width * 0.2800000,
        size.height * 0.2240000,
        size.width * 0.2800000,
        size.height * 0.2240000);
    path_6.arcToPoint(Offset(size.width * 0.2720000, size.height * 0.2240000),
        radius: Radius.elliptical(
            size.width * 0.02310000, size.height * 0.01848000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.arcToPoint(Offset(size.width * 0.2669000, size.height * 0.2196000),
        radius: Radius.elliptical(
            size.width * 0.01000000, size.height * 0.008000000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.arcToPoint(Offset(size.width * 0.2628000, size.height * 0.2048800),
        radius:
            Radius.elliptical(size.width * 0.1677000, size.height * 0.1341600),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.arcToPoint(Offset(size.width * 0.2614000, size.height * 0.1932800),
        radius: Radius.elliptical(
            size.width * 0.05320000, size.height * 0.04256000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_6.cubicTo(
        size.width * 0.2625000,
        size.height * 0.1920000,
        size.width * 0.2636000,
        size.height * 0.1877600,
        size.width * 0.2758000,
        size.height * 0.1877600);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = baseColor.withOpacity(1.0);
    if (animation.value < 1.0) {
      final path_6Animated = createAnimatedPath(path_6, animationPercent);
      canvas.drawPath(path_6Animated, Paint()..style = PaintingStyle.stroke);
    } else {
      final path_6Animated = createAnimatedPath(path_6, animationPercent);
      canvas.drawPath(path_6Animated, paint_6_fill);
    }

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.2172000, size.height * 0.2244800);
    path_7.cubicTo(
        size.width * 0.2122000,
        size.height * 0.2244800,
        size.width * 0.2000000,
        size.height * 0.2244800,
        size.width * 0.2000000,
        size.height * 0.2244800);
    path_7.cubicTo(
        size.width * 0.2000000,
        size.height * 0.2244800,
        size.width * 0.1878000,
        size.height * 0.2244800,
        size.width * 0.1828000,
        size.height * 0.2244800);
    path_7.cubicTo(
        size.width * 0.1778000,
        size.height * 0.2244800,
        size.width * 0.1706000,
        size.height * 0.2314400,
        size.width * 0.1706000,
        size.height * 0.2345600);
    path_7.lineTo(size.width * 0.1706000, size.height * 0.2599200);
    path_7.cubicTo(
        size.width * 0.1706000,
        size.height * 0.2632800,
        size.width * 0.1942000,
        size.height * 0.2821600,
        size.width * 0.1945000,
        size.height * 0.2824000);
    path_7.arcToPoint(Offset(size.width * 0.1972000, size.height * 0.2824000),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.01096000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_7.lineTo(size.width * 0.2028000, size.height * 0.2824000);
    path_7.arcToPoint(Offset(size.width * 0.2055000, size.height * 0.2824000),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.01096000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_7.cubicTo(
        size.width * 0.2055000,
        size.height * 0.2824000,
        size.width * 0.2294000,
        size.height * 0.2632800,
        size.width * 0.2294000,
        size.height * 0.2599200);
    path_7.lineTo(size.width * 0.2294000, size.height * 0.2345600);
    path_7.cubicTo(
        size.width * 0.2294000,
        size.height * 0.2314400,
        size.width * 0.2222000,
        size.height * 0.2244000,
        size.width * 0.2172000,
        size.height * 0.2244800);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = baseColor.withOpacity(1.0);

    final path_7Animated = createAnimatedPath(path_7, animationPercent);
    canvas.drawPath(path_7Animated, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.2172000, size.height * 0.3558400);
    path_8.lineTo(size.width * 0.1828000, size.height * 0.3558400);
    path_8.cubicTo(
        size.width * 0.1778000,
        size.height * 0.3558400,
        size.width * 0.1706000,
        size.height * 0.3488800,
        size.width * 0.1706000,
        size.height * 0.3457600);
    path_8.lineTo(size.width * 0.1706000, size.height * 0.3204000);
    path_8.cubicTo(
        size.width * 0.1706000,
        size.height * 0.3170400,
        size.width * 0.1942000,
        size.height * 0.2980800,
        size.width * 0.1945000,
        size.height * 0.2979200);
    path_8.arcToPoint(Offset(size.width * 0.1972000, size.height * 0.2979200),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.01096000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_8.lineTo(size.width * 0.2028000, size.height * 0.2979200);
    path_8.arcToPoint(Offset(size.width * 0.2055000, size.height * 0.2979200),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.01096000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_8.cubicTo(
        size.width * 0.2055000,
        size.height * 0.2979200,
        size.width * 0.2294000,
        size.height * 0.3170400,
        size.width * 0.2294000,
        size.height * 0.3204000);
    path_8.lineTo(size.width * 0.2294000, size.height * 0.3457600);
    path_8.cubicTo(
        size.width * 0.2294000,
        size.height * 0.3488800,
        size.width * 0.2222000,
        size.height * 0.3559200,
        size.width * 0.2172000,
        size.height * 0.3558400);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = baseColor.withOpacity(1.0);

    final path_8Animated = createAnimatedPath(path_8, animationPercent);
    canvas.drawPath(path_8Animated, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.2821000, size.height * 0.3040000);
    path_9.cubicTo(
        size.width * 0.2821000,
        size.height * 0.3000000,
        size.width * 0.2821000,
        size.height * 0.2902400,
        size.width * 0.2821000,
        size.height * 0.2902400);
    path_9.cubicTo(
        size.width * 0.2821000,
        size.height * 0.2902400,
        size.width * 0.2821000,
        size.height * 0.2804800,
        size.width * 0.2821000,
        size.height * 0.2764800);
    path_9.cubicTo(
        size.width * 0.2821000,
        size.height * 0.2724800,
        size.width * 0.2734000,
        size.height * 0.2667200,
        size.width * 0.2695000,
        size.height * 0.2667200);
    path_9.lineTo(size.width * 0.2378000, size.height * 0.2667200);
    path_9.cubicTo(
        size.width * 0.2336000,
        size.height * 0.2667200,
        size.width * 0.2099000,
        size.height * 0.2856000,
        size.width * 0.2097000,
        size.height * 0.2858400);
    path_9.arcToPoint(Offset(size.width * 0.2100000, size.height * 0.2880000),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.01096000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_9.lineTo(size.width * 0.2100000, size.height * 0.2924800);
    path_9.arcToPoint(Offset(size.width * 0.2100000, size.height * 0.2946400),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.01096000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_9.cubicTo(
        size.width * 0.2100000,
        size.height * 0.2946400,
        size.width * 0.2339000,
        size.height * 0.3137600,
        size.width * 0.2381000,
        size.height * 0.3137600);
    path_9.lineTo(size.width * 0.2700000, size.height * 0.3137600);
    path_9.cubicTo(
        size.width * 0.2734000,
        size.height * 0.3136800,
        size.width * 0.2822000,
        size.height * 0.3079200,
        size.width * 0.2821000,
        size.height * 0.3040000);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = baseColor.withOpacity(1.0);

    final path_9Animated = createAnimatedPath(path_9, animationPercent);
    canvas.drawPath(path_9Animated, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.1179000, size.height * 0.3040000);
    path_10.cubicTo(
        size.width * 0.1179000,
        size.height * 0.3000000,
        size.width * 0.1179000,
        size.height * 0.2902400,
        size.width * 0.1179000,
        size.height * 0.2902400);
    path_10.cubicTo(
        size.width * 0.1179000,
        size.height * 0.2902400,
        size.width * 0.1179000,
        size.height * 0.2804800,
        size.width * 0.1179000,
        size.height * 0.2764800);
    path_10.cubicTo(
        size.width * 0.1179000,
        size.height * 0.2724800,
        size.width * 0.1266000,
        size.height * 0.2667200,
        size.width * 0.1305000,
        size.height * 0.2667200);
    path_10.lineTo(size.width * 0.1622000, size.height * 0.2667200);
    path_10.cubicTo(
        size.width * 0.1664000,
        size.height * 0.2667200,
        size.width * 0.1901000,
        size.height * 0.2856000,
        size.width * 0.1903000,
        size.height * 0.2858400);
    path_10.arcToPoint(Offset(size.width * 0.1903000, size.height * 0.2880000),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.01096000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_10.lineTo(size.width * 0.1903000, size.height * 0.2924800);
    path_10.arcToPoint(Offset(size.width * 0.1903000, size.height * 0.2946400),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.01096000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_10.cubicTo(
        size.width * 0.1903000,
        size.height * 0.2946400,
        size.width * 0.1664000,
        size.height * 0.3137600,
        size.width * 0.1622000,
        size.height * 0.3137600);
    path_10.lineTo(size.width * 0.1305000, size.height * 0.3137600);
    path_10.cubicTo(
        size.width * 0.1266000,
        size.height * 0.3136800,
        size.width * 0.1178000,
        size.height * 0.3079200,
        size.width * 0.1179000,
        size.height * 0.3040000);
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = baseColor.withOpacity(1.0);

    final path_10Animated = createAnimatedPath(path_10, animationPercent);
    canvas.drawPath(path_10Animated, paint_10_fill);

    if (enableType1CustomDesign) {
      Path path_11 = Path();
      path_11.moveTo(size.width * 0.1048193, size.height * 0.6423597);
      path_11.lineTo(size.width * 0.1117476, size.height * 0.6350026);
      path_11.lineTo(size.width * 0.1290282, size.height * 0.5949118);
      path_11.lineTo(size.width * 0.1451567, size.height * 0.5529777);
      path_11.lineTo(size.width * 0.08985890, size.height * 0.5663413);
      path_11.lineTo(size.width * 0.02880100, size.height * 0.5456046);
      path_11.lineTo(size.width * 0.03283310, size.height * 0.5769400);
      path_11.lineTo(size.width * 0.04262540, size.height * 0.6032064);
      path_11.lineTo(size.width * 0.05472180, size.height * 0.6207174);
      path_11.lineTo(size.width * 0.07545850, size.height * 0.6345418);
      path_11.lineTo(size.width * 0.09734720, size.height * 0.6419148);

      Paint paint_11_fill = Paint()..style = PaintingStyle.fill;
      paint_11_fill.color = const Color(0xffa5b211).withOpacity(1.0);

      if (animation.value < 1.0) {
        final path_11Animated = createAnimatedPath(path_11, animationPercent);
        canvas.drawPath(path_11Animated, Paint()..style = PaintingStyle.stroke);
      } else {
        final path_11Animated = createAnimatedPath(path_11, animationPercent);
        canvas.drawPath(path_11Animated, paint_11_fill);
      }

      Path path_12 = Path();
      path_12.moveTo(size.width * 0.08984280, size.height * 0.5552657);
      path_12.lineTo(size.width * 0.1503408, size.height * 0.5414573);
      path_12.cubicTo(
          size.width * 0.1585970,
          size.height * 0.5277865,
          size.width * 0.1662773,
          size.height * 0.5127331,
          size.width * 0.1733815,
          size.height * 0.4976798);
      path_12.lineTo(size.width * 0.08409870, size.height * 0.4451470);
      path_12.lineTo(size.width * 0.05472170, size.height * 0.3419245);
      path_12.lineTo(size.width * 0.03859320, size.height * 0.3995263);
      path_12.lineTo(size.width * 0.02937690, size.height * 0.4557458);
      path_12.lineTo(size.width * 0.02649680, size.height * 0.5073570);
      path_12.lineTo(size.width * 0.02764890, size.height * 0.5327018);

      Paint paint_12_fill = Paint()..style = PaintingStyle.fill;
      paint_12_fill.color = Color(0xffa5b211).withOpacity(1.0);
      if (animation.value < 1.0) {
        final path_12Animated = createAnimatedPath(path_12, animationPercent);
        canvas.drawPath(path_12Animated, Paint()..style = PaintingStyle.stroke);
      } else {
        final path_12Animated = createAnimatedPath(path_12, animationPercent);
        canvas.drawPath(path_12Animated, paint_12_fill);
      }

      Path path_13 = Path();
      path_13.moveTo(size.width * 0.8939645, size.height * 0.6432813);
      path_13.lineTo(size.width * 0.9066529, size.height * 0.6409932);
      path_13.lineTo(size.width * 0.9291177, size.height * 0.6317770);
      path_13.lineTo(size.width * 0.9481263, size.height * 0.6161092);
      path_13.lineTo(size.width * 0.9607987, size.height * 0.5935293);
      path_13.lineTo(size.width * 0.9677109, size.height * 0.5732534);
      path_13.lineTo(size.width * 0.9723191, size.height * 0.5345450);
      path_13.lineTo(size.width * 0.9723191, size.height * 0.5041313);
      path_13.lineTo(size.width * 0.9193254, size.height * 0.5502128);
      path_13.lineTo(size.width * 0.8219783, size.height * 0.4930718);
      path_13.lineTo(size.width * 0.8847643, size.height * 0.6290122);
      path_13.lineTo(size.width * 0.8899484, size.height * 0.6391500);

      Paint paint_13_fill = Paint()..style = PaintingStyle.fill;
      paint_13_fill.color = const Color(0xffa5b211).withOpacity(1.0);
      if (animation.value < 1.0) {
        final path_13Animated = createAnimatedPath(path_13, animationPercent);
        canvas.drawPath(path_13Animated, Paint()..style = PaintingStyle.stroke);
      } else {
        final path_13Animated = createAnimatedPath(path_13, animationPercent);
        canvas.drawPath(path_13Animated, paint_13_fill);
      }

      Path path_14 = Path();
      path_14.moveTo(size.width * 0.9170052, size.height * 0.5368331);
      path_14.lineTo(size.width * 0.9717431, size.height * 0.4907676);
      path_14.lineTo(size.width * 0.9700150, size.height * 0.4552849);
      path_14.lineTo(size.width * 0.9607987, size.height * 0.4036737);
      path_14.lineTo(size.width * 0.8801562, size.height * 0.3778681);
      path_14.lineTo(size.width * 0.7902973, size.height * 0.4382348);
      path_14.lineTo(size.width * 0.8127620, size.height * 0.4760216);

      Paint paint_14_fill = Paint()..style = PaintingStyle.fill;
      paint_14_fill.color = const Color(0xffa5b211).withOpacity(1.0);
      if (animation.value < 1.0) {
        final path_14Animated = createAnimatedPath(path_14, animationPercent);
        canvas.drawPath(path_14Animated, Paint()..style = PaintingStyle.stroke);
      } else {
        final path_14Animated = createAnimatedPath(path_14, animationPercent);
        canvas.drawPath(path_14Animated, paint_14_fill);
      }
    }

    if (enableType2CustomDesign) {
      Path path_15 = Path();
      path_15.moveTo(size.width * 0.4720793, size.height * 0.3129539);
      path_15.cubicTo(
          size.width * 0.4408328,
          size.height * 0.3130238,
          size.width * 0.4087916,
          size.height * 0.3127758,
          size.width * 0.3775451,
          size.height * 0.3128458);
      path_15.cubicTo(
          size.width * 0.3616485,
          size.height * 0.3132697,
          size.width * 0.3421751,
          size.height * 0.3009762,
          size.width * 0.3374061,
          size.height * 0.2804166);
      path_15.lineTo(size.width * 0.3111766, size.height * 0.1809037);
      path_15.lineTo(size.width * 0.3127662, size.height * 0.1659609);
      path_15.lineTo(size.width * 0.3187275, size.height * 0.1615098);
      path_15.lineTo(size.width * 0.3326370, size.height * 0.1596022);
      path_15.lineTo(size.width * 0.3485336, size.height * 0.1583305);
      path_15.lineTo(size.width * 0.4300039, size.height * 0.1554691);
      path_15.lineTo(size.width * 0.5472416, size.height * 0.2521206);

      Paint paint_15_fill = Paint()..style = PaintingStyle.fill;
      paint_15_fill.color = const Color(0xff305bc9).withOpacity(1.0);
      if (animation.value < 1.0) {
        final path_15Animated = createAnimatedPath(path_15, animationPercent);
        canvas.drawPath(path_15Animated, Paint()..style = PaintingStyle.stroke);
      } else {
        final path_15Animated = createAnimatedPath(path_15, animationPercent);
        canvas.drawPath(path_15Animated, paint_15_fill);
      }

      Path path_16 = Path();
      path_16.moveTo(size.width * 0.5026804, size.height * 0.3129539);
      path_16.lineTo(size.width * 0.6187765, size.height * 0.3128458);
      path_16.cubicTo(
          size.width * 0.6389123,
          size.height * 0.3145414,
          size.width * 0.6541661,
          size.height * 0.3025659,
          size.width * 0.6607897,
          size.height * 0.2870932);
      path_16.lineTo(size.width * 0.6878140, size.height * 0.1878982);
      path_16.lineTo(size.width * 0.6884958, size.height * 0.1765430);
      path_16.lineTo(size.width * 0.6874752, size.height * 0.1693209);
      path_16.lineTo(size.width * 0.6854295, size.height * 0.1639160);
      path_16.lineTo(size.width * 0.6786734, size.height * 0.1605091);
      path_16.lineTo(size.width * 0.6601078, size.height * 0.1581932);
      path_16.lineTo(size.width * 0.6263274, size.height * 0.1573767);
      path_16.lineTo(size.width * 0.5655228, size.height * 0.1551512);
      path_16.lineTo(size.width * 0.5051156, size.height * 0.1545153);
      path_16.lineTo(size.width * 0.4590154, size.height * 0.1548332);
      path_16.lineTo(size.width * 0.5766505, size.height * 0.2508489);
      path_16.lineTo(size.width * 0.5026804, size.height * 0.3129539);
      path_16.close();

      Paint paint_16_fill = Paint()..style = PaintingStyle.fill;
      paint_16_fill.color = const Color(0xff305bc9).withOpacity(1.0);
      if (animation.value < 1.0) {
        final path_16Animated = createAnimatedPath(path_16, animationPercent);
        canvas.drawPath(path_16Animated, Paint()..style = PaintingStyle.stroke);
      } else {
        final path_16Animated = createAnimatedPath(path_16, animationPercent);
        canvas.drawPath(path_16Animated, paint_16_fill);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
