import 'package:flutter/material.dart';
import 'package:loader_project/src/shared/full_screen_loader.dart';

OverlayEntry entry =
    OverlayEntry(builder: (context) => const FullScreenLoader());
changeOverLayLoadingState(bool? isLoading, OverlayState? overlayState) async {
  assert(overlayState != null);
  if (isLoading == true) {
    overlayState!.insert(entry);
  } else {
    if (overlayState!.mounted) {
      entry.remove();
    }
  }
}
