// The MIT License (MIT)
//
// Copyright (c) 2020 nslog11
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:widget/loading/easy_loading.dart';

import '../../box_decoration/box_shadow_radius_decoration.dart';
import '../theme.dart';

class EasyLoadingContainer extends StatefulWidget {
  final Widget? indicator;
  final String? status;
  final bool? dismissOnTap;
  final EasyLoadingToastPosition? toastPosition;
  final EasyLoadingMaskType? maskType;
  final Completer<void>? completer;
  final bool animation;
  final bool styleMaterialDialog;
  final AlignmentGeometry? alignment;
  final EasyLoadingAnimationStyle? overrideAnimationStyle;
  final Duration? overrideDuration;

  const EasyLoadingContainer({
    Key? key,
    this.indicator,
    this.status,
    this.dismissOnTap,
    this.toastPosition,
    this.maskType,
    this.completer,
    this.animation = true,
    this.styleMaterialDialog = false,
    this.alignment,
    this.overrideAnimationStyle,
    this.overrideDuration,
  }) : super(key: key);

  @override
  EasyLoadingContainerState createState() => EasyLoadingContainerState();
}

class EasyLoadingContainerState extends State<EasyLoadingContainer>
    with SingleTickerProviderStateMixin {
  String? _status;
  Color? _maskColor;
  late AnimationController _animationController;
  late AlignmentGeometry _alignment;
  late bool _dismissOnTap, _ignoring;

  bool get isPersistentCallbacks =>
      SchedulerBinding.instance.schedulerPhase == SchedulerPhase.persistentCallbacks;

  @override
  void initState() {
    super.initState();
    if (!mounted) return;
    _status = widget.status;

    /// alignment position of indicator
    _alignment = (widget.indicator == null && widget.status?.isNotEmpty == true)
        ? EasyLoadingTheme.alignment(widget.toastPosition)
        : (widget.alignment ?? AlignmentDirectional.center);

    /// isDismiss on tab when click indicator
    _dismissOnTap = widget.dismissOnTap ?? (EasyLoadingTheme.dismissOnTap ?? false);
    _ignoring = _dismissOnTap ? false : EasyLoadingTheme.ignoring(widget.maskType);
    _maskColor = EasyLoadingTheme.maskColor(widget.maskType);
    _animationController = AnimationController(
      vsync: this,
      duration: EasyLoadingTheme.animationDuration,
    )..addStatusListener((status) async {
        bool isCompleted = widget.completer?.isCompleted ?? false;
        if (status == AnimationStatus.completed && !isCompleted) {
          widget.completer?.complete();
        }
      });
    show(widget.animation);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> show(bool animation) {
    if (isPersistentCallbacks) {
      Completer<void> completer = Completer<void>();
      SchedulerBinding.instance.addPostFrameCallback((_) => Future.sync(
            () async => await _animationController
                .forward(from: animation ? 0 : 1)
                .then((_) => completer.complete()),
          ));
      return completer.future;
    } else {
      return Future.sync(() => _animationController.forward(from: animation ? 0 : 1));
    }
  }

  Future<void> dismiss(bool animation) {
    if (isPersistentCallbacks) {
      Completer<void> completer = Completer<void>();
      SchedulerBinding.instance.addPostFrameCallback(
        (_) => Future.sync(() => _animationController.reverse(from: animation ? 1 : 0))
            .whenComplete(() => completer.complete()),
      );
      return completer.future;
    } else {
      return Future.sync(() => _animationController.reverse(from: animation ? 1 : 0));
    }
  }

  void updateStatus(String status) {
    if (_status == status) return;
    setState(() {
      _status = status;
    });
  }

  void _onTap() async {
    if (_dismissOnTap) await EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: _alignment,
      children: <Widget>[
        AnimatedBuilder(
          animation: _animationController,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animationController.value,
              child: IgnorePointer(
                ignoring: _ignoring,
                child: _dismissOnTap
                    ? GestureDetector(
                        onTap: _onTap,
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          color: Colors.black12,
                        ),
                      )
                    : Container(
                        color: Colors.black12,
                      ),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _animationController,
          builder: (BuildContext context, Widget? child) {
            final animationStyle = widget.overrideAnimationStyle != null
                ? EasyLoadingTheme.getLoadingAnimation(widget.overrideAnimationStyle!)
                : EasyLoadingTheme.loadingAnimation;
            return animationStyle.buildWidget(
              _Indicator(
                styleMaterialDialog: widget.styleMaterialDialog,
                status: _status,
                indicator: widget.indicator,
              ),
              _animationController,
              _alignment,
            );
          },
        ),
      ],
    );
  }
}

class _Indicator extends StatelessWidget {
  final Widget? indicator;
  final String? status;
  final bool styleMaterialDialog;

  const _Indicator({
    required this.indicator,
    required this.status,
    this.styleMaterialDialog = false,
  });

  @override
  Widget build(BuildContext context) {
    return _style();
  }

  _style() => Builder(
        builder: (context) {
          final width = (MediaQuery.of(context).size.width - 32);
          return Container(
              decoration: status != null
                  ? HaloBoxDecoration.circular(
                      10,
                      background: context.surfaceColor,
                      shadow: Colors.black12,
                      border: Colors.black26,
                      borderWidth: 1,
                    )
                  : null,
              padding: EasyLoadingTheme.contentPadding,
              margin: const EdgeInsets.only(bottom: 84),
              width: width,
              child: status == null ? _justIndicator() : _indicatorWithMessage());
        },
      );

  _indicatorWithMessage() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          indicator ?? const SizedBox.shrink(),
          const SizedBox(width: 8),
          if (status != null)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  status ?? '',
                  style: EasyLoadingTheme.textStyle ??
                      TextStyle(
                        color: EasyLoadingTheme.textColor,
                        fontSize: EasyLoadingTheme.fontSize,
                      ),
                ),
              ),
            )
        ],
      );

  _justIndicator() => Container(
        margin: status?.isNotEmpty == true ? EasyLoadingTheme.textPadding : EdgeInsets.zero,
        child: indicator,
      );
}
