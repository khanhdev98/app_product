part of 'theme_component.dart';

InputDecorationTheme haloInputDecorationTheme(ColorScheme colorScheme) => InputDecorationTheme(
      contentPadding: EdgeInsets.all(HaloSize.textFieldPadding),
      hintStyle: const TextStyle().regular.copyWith(
        fontSize: HaloFontSize.titleMedium,
        color: colorScheme.onSurface.withOpacity(0.6),
      ),
      labelStyle: const TextStyle().regular.copyWith(
        fontSize: HaloFontSize.titleMedium,
        color: colorScheme.onSurface.withOpacity(0.6),
      ),
      border: getTextFieldBorder(colorScheme.outline),
      enabledBorder: getTextFieldBorder(colorScheme.outline),
      disabledBorder: getTextFieldBorder(colorScheme.onSurfaceVariant.withOpacity(0.12)),
      focusedBorder: getTextFieldBorder(colorScheme.primary, focused: true),
      errorBorder: getTextFieldBorder(colorScheme.error),
      focusedErrorBorder: getTextFieldBorder(colorScheme.error, focused: true),
      errorStyle: const TextStyle().regular.copyWith(
            fontSize: HaloFontSize.bodySmall,
            color: colorScheme.error,
      ),
    );

InputDecoration get textFieldNoBorder => InputDecoration(
      contentPadding: EdgeInsets.all(HaloSize.textFieldPadding),
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
    );

InputBorder? getTextFieldBorder(Color borderColor, {bool focused = false}) => OutlineInputBorder(
      borderSide: BorderSide(
          color: borderColor, width: (focused ? 2 : 1 ) * HaloSize.outlineWidth),
      borderRadius: BorderRadius.circular(HaloSize.textFieldRadius),
    );

InputDecoration textFieldCircleBorder(ColorScheme colorScheme) => InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: HaloSize.textFieldPadding, vertical: 13),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: colorScheme.outline,  width: HaloSize.outlineWidth),
    borderRadius: BorderRadius.circular(HaloSize.buttonRadius),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: colorScheme.outline,width: HaloSize.outlineWidth),
    borderRadius: BorderRadius.circular(HaloSize.buttonRadius),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: colorScheme.onSurfaceVariant,width: HaloSize.outlineWidth),
    borderRadius: BorderRadius.circular(HaloSize.buttonRadius),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: colorScheme.primary,width: HaloSize.outlineWidth * 2),
    borderRadius: BorderRadius.circular(HaloSize.buttonRadius),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: colorScheme.error,width: HaloSize.outlineWidth),
    borderRadius: BorderRadius.circular(HaloSize.buttonRadius),
  ),
  focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: colorScheme.error, width: HaloSize.outlineWidth * 2),
        borderRadius: BorderRadius.circular(HaloSize.buttonRadius),
      ),
    );
