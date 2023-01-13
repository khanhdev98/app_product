import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class TopShadow extends StatelessWidget {
  final Widget child;

  const TopShadow({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: context.surfaceColor,
        boxShadow:  [
          BoxShadow(
            color: M3HaloColors.lightColorScheme.shadow.withOpacity(0.4),
            offset: const Offset(0.0, -1.0),
            blurRadius: 1.0,
          ),
          BoxShadow(
            offset: const Offset(0.0, 1.0),
            color: context.surfaceColor,
            spreadRadius: 1,
            blurRadius: 1.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
