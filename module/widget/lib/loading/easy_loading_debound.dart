part of 'easy_loading.dart';

extension EasyDebounceLoading on EasyLoading {
  /// remove duplicate and debounce tim show dialog

  static Future<void> showErrorDebounce(
    String status, {
    Duration? duration,
    AlignmentGeometry? alignment,
    EasyLoadingMaskType? maskType,
    bool? dismissOnTap,
    EasyLoadingAnimationStyle? overrideAnimationStyle,
  }) {
    final instance = EasyLoading();

    instance.showingType = EasyShowStyle.showError;
    Widget w = instance.errorWidget ??
        Icon(
          Icons.clear,
          color: EasyLoadingTheme.indicatorColor,
          size: EasyLoadingTheme.indicatorSize,
        );
    return instance._show(
      status: status,
      duration: duration ?? EasyLoadingTheme.displayDuration,
      maskType: maskType,
      dismissOnTap: dismissOnTap,
      alignment: alignment,
      w: w,
      overrideAnimationStyle: overrideAnimationStyle,
    );
  }
}
