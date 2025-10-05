import 'package:flutter/material.dart';

class MagneticScrollPhysics extends ScrollPhysics {
  final double itemSize;

  const MagneticScrollPhysics({required this.itemSize, super.parent});

  @override
  MagneticScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return MagneticScrollPhysics(
        itemSize: itemSize, parent: buildParent(ancestor));
  }

  double _getPage(ScrollMetrics position, double portion) {
    return (position.pixels + portion) / itemSize;
  }

  double _getPixels(double page, double portion) {
    return (page * itemSize) - portion;
  }

  double _getTargetPixels(
      ScrollMetrics position, Tolerance tolerance, double velocity) {
    double page = _getPage(position, itemSize / 2);
    if (velocity < -tolerance.velocity) {
      page -= 0.5;
    } else if (velocity > tolerance.velocity) {
      page += 0.5;
    }
    return _getPixels(page.roundToDouble(), itemSize / 2);
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    final Tolerance tolerance = toleranceFor(position);
    final double target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}
