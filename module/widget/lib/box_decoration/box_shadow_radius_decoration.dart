import 'package:flutter/material.dart';

class HaloBoxDecoration extends BoxDecoration {
  const HaloBoxDecoration({
    color,
    image,
    border,
    borderRadius,
    boxShadow,
    gradient,
    backgroundBlendMode,
    shape = BoxShape.rectangle,
  }) : super(
            color: color,
            image: image,
            border: border,
            borderRadius: borderRadius,
            boxShadow: boxShadow,
            gradient: gradient,
            backgroundBlendMode: backgroundBlendMode,
            shape: shape);

  factory HaloBoxDecoration.circular(double radius,
      {Color background = Colors.white,
      Color? shadow,
      Color? border,
      double? borderWidth,
      BorderRadius? borderRadius}) {
    return HaloBoxDecoration(
      borderRadius: borderRadius ?? BorderRadius.circular(radius),
      color: background,
      border: border != null ? Border.all(color: border, width: borderWidth ?? 1.0) : null,
      boxShadow: <BoxShadow>[
        if (shadow != null)
          BoxShadow(
            color: shadow,
            blurRadius: 10.0,
            spreadRadius: 0.0,
            offset: const Offset(0.0, 2.0), // shadow direction: bottom right
          ),
      ],
    );
  }

  factory HaloBoxDecoration.radius(BorderRadius radius,
      {Color background = Colors.white, Color? shadow, Color? border}) {
    return HaloBoxDecoration(
      borderRadius: radius,
      color: background,
      border: border != null ? Border.all(color: border) : null,
      boxShadow: <BoxShadow>[
        if (shadow != null)
          BoxShadow(
            color: shadow,
            blurRadius: 10.0,
            spreadRadius: 0.0,
            offset: const Offset(0.0, 2.0), // shadow direction: bottom right
          ),
      ],
    );
  }
}
