import 'package:flutter/material.dart';

class DuploOverlay {
  static void removeEntry(OverlayEntry entry) {
    entry.remove();
  }

  static void show(
    BuildContext context,
    String message, {

    /// optional position parameter otherwise positioned centrally
    Offset? position,

    /// offset from the position
    Offset offset = const Offset(12, -42),
    Duration duration = const Duration(seconds: 1),
  }) {
    final overlay = Overlay.of(context);

    final entry = OverlayEntry(
      builder: (_) {
        final overlayWidget = Material(
          color: Colors.blueGrey,
          type: MaterialType.circle,
          child: Container(
            constraints: const BoxConstraints(minHeight: 34, minWidth: 66),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(message),
          ),
        );
        return position == null
            ? Center(child: overlayWidget)
            : Positioned(
                top: position.dy + offset.dy,
                left: position.dx + offset.dx,
                child: overlayWidget,
              );
      },
    );
    overlay.insert(entry);
    Future.delayed(duration, () => removeEntry(entry));
  }
}
