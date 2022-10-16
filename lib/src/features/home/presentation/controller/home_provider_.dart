import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loader_project/src/core/base_view_model/base_vm.dart';
import 'package:loader_project/src/features/home/presentation/view/other_screen_.dart';
import 'package:loader_project/src/shared/overlay_widget.dart';

class HomeViewModel extends BaseViewModel {
  BuildContext? context;
  HomeViewModel({this.context});
  @override
  FutureOr<void> disposeState() {}

  @override
  FutureOr<void> initState() {}

  void startLoading({bool isOtherScreen = false}) async {
    changeLoaderStatus(true);
    await Future.delayed(const Duration(seconds: 6));
    if (isOtherScreen) {
      Navigator.pop(context!);
    } else {
      Navigator.push(
          context!,
          Platform.isAndroid
              ? MaterialPageRoute(builder: (context) => const OtherScreen())
              : CupertinoPageRoute(builder: (context) => const OtherScreen()));
    }
    changeLoaderStatus(false);
  }

  OverlayState? overlayState;

  void startLoadingOverlay({bool isOtherScreen = false}) async {
    overlayState = Overlay.of(context!);
    changeOverLayLoadingState(true, overlayState);
    await Future.delayed(const Duration(seconds: 6));
    if (isOtherScreen) {
      Navigator.pop(context!);
    } else {
      Navigator.push(
          context!,
          Platform.isAndroid
              ? MaterialPageRoute(builder: (context) => const OtherScreen())
              : CupertinoPageRoute(builder: (context) => const OtherScreen()));
    }
    changeOverLayLoadingState(false, overlayState);
  }
}
