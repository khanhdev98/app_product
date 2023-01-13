import 'package:flutter/material.dart';

import '../animations/bouncing_line.dart';

class LoadingOverlayPro extends StatefulWidget {
  const LoadingOverlayPro({
    Key? key,
    required this.isLoading,
    required this.child,
    this.backgroundColor = Colors.black54,
    this.progressIndicator = const LoadingBouncingLine.circle(),
    this.overLoading,
    this.bottomLoading,
  }) : super(key: key);

  /// Show/hide loading
  final bool isLoading;

  /// Defaults to [Colors.black54].
  final Color backgroundColor;

  final Widget progressIndicator;

  final Widget child;

  final Widget? overLoading;

  final Widget? bottomLoading;

  @override
  _LoadingOverlayProState createState() => _LoadingOverlayProState();
}

class _LoadingOverlayProState extends State<LoadingOverlayPro> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        widget.child,
        Visibility(
            visible: widget.isLoading,
            child: Container(
                color: widget.backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.overLoading != null) widget.overLoading!,
                    const SizedBox(height: 20),
                    Center(child: widget.progressIndicator),
                    const SizedBox(height: 20),
                    if (widget.bottomLoading != null) widget.bottomLoading!,
                  ],
                ))),
      ],
    );
  }
}
