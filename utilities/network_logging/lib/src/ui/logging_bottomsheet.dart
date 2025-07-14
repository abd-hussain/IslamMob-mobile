import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_logging/src/ui/draggable_handle.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class LoggingBottomsheet {
  static Future<T?> showModalSheetV2<T>(
    BuildContext context, {
    required Widget content,
    RouteSettings? settings,
    PreferredSizeWidget? appBar,
    Widget? bottomBar,
    Widget Function(Widget child)? builder,
    bool barrierDismissible = true,
  }) {
    final modalRoute = CupertinoModalSheetRoute<T>(
      swipeDismissible: true,
      settings: settings,
      barrierDismissible: barrierDismissible,
      swipeDismissSensitivity: const SwipeDismissSensitivity(
        minDragDistance: 300,
      ),
      builder: (_) => SheetKeyboardDismissible(
        dismissBehavior: const SheetKeyboardDismissBehavior.onDragDown(
          isContentScrollAware: true,
        ),
        child: Sheet(
          scrollConfiguration: const SheetScrollConfiguration(),
          physics: const BouncingSheetPhysics(),
          decoration: const BoxSheetDecoration(
            size: SheetSize.stretch,
            decoration: ShapeDecoration(
              color: CupertinoColors.systemBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          child: _buildSheetContent(appBar, content, bottomBar, builder),
        ),
      ),
    );

    return Navigator.push(context, modalRoute);
  }

  static Widget _buildSheetContent(
    PreferredSizeWidget? appBar,
    Widget content,
    Widget? bottomBar,
    Widget Function(Widget child)? builder,
  ) {
    final sheetContent = ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: SheetContentScaffold(
        backgroundColor: Colors.white,
        topBar: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DraggableHandle(),
            appBar ?? const SizedBox.shrink(),
          ],
        ),
        bottomBarVisibility: const BottomBarVisibility.always(
          // Make the bottom bar visible when the keyboard is open.
          ignoreBottomInset: true,
        ),
        body: content,
        bottomBar: bottomBar != null
            ? SafeArea(top: false, child: bottomBar)
            : null,
      ),
    );

    // Apply builder if provided, otherwise return content directly
    return builder != null ? builder(sheetContent) : sheetContent;
  }
}
