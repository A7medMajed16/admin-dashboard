import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.deskTopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, deskTopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth + 32 < 600) {
        return mobileLayout(context);
      } else if (constraint.maxWidth + 32 < 900) {
        return tabletLayout(context);
      } else {
        return deskTopLayout(context);
      }
    });
  }
}
