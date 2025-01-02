import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A customizable button widget with optional loading state, icons, and style.
class CustomButton extends StatelessWidget {
  /// Text label to display inside the button.
  final Text? label;

  /// Whether the button should display a loading state.
  final bool isLoading;

  /// Whether the button is enabled and clickable.
  final bool isEnabled;

  /// Callback to execute when the button is clicked.
  final VoidCallback onPressed;

  /// If true, the icon is displayed on the right side of the label.
  final bool isIconReversed;

  /// Custom decoration style for the button container.
  final BoxDecoration? style;

  /// Padding for the button content.
  final EdgeInsets? padding;

  /// SVG icon to display inside the button.
  final SvgPicture? svgIcon;

  /// Standard icon to display inside the button.
  final Icon? icon;

  /// Fixed height for the button.
  final double? height;

  /// Fixed width for the button.
  final double? width;

  /// Alignment for the row of elements inside the button.
  final MainAxisAlignment alignment;

  /// Determines the size behavior of the button's row.
  final MainAxisSize sizeBehavior;

  /// Spacing between the icon and the label.
  final double? spacing;

  /// Constructor for [CustomButton].
  const CustomButton({
    Key? key,
    required this.onPressed,
    this.label,
    this.padding,
    this.isIconReversed = false,
    this.alignment = MainAxisAlignment.center,
    this.sizeBehavior = MainAxisSize.max,
    this.isLoading = false,
    this.isEnabled = true,
    this.width,
    this.spacing,
    this.icon,
    this.height,
    this.svgIcon,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: isEnabled && !isLoading ? onPressed : null,
      child: Container(
        constraints: BoxConstraints(maxHeight: height ?? 40),
        width: width,
        height: height,
        padding: padding,
        decoration: style,
        child: _buildContent(),
      ),
    );
  }

  /// Retrieves the appropriate icon to display.
  Widget _getIcon() {
    return icon ?? svgIcon ?? const SizedBox.shrink();
  }

  /// Builds the content of the button, including optional icons and labels.
  Widget _buildContent() {
    return Row(
      mainAxisAlignment: alignment,
      mainAxisSize: sizeBehavior,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!isIconReversed) _getIcon(),
        if (spacing != null) SizedBox(width: spacing),
        label ?? const SizedBox.shrink(),
        if (isIconReversed) _getIcon(),
      ],
    );
  }
}
