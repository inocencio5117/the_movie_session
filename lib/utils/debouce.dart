import 'dart:async';

import 'package:flutter/material.dart';

class Debounce {
  Timer? debouncer;

  void dispose() {
    debouncer?.cancel();
  }

  void debounce(
    VoidCallback callback, {
      Duration duration = const Duration(milliseconds: 1000),
  }) {
    if (debouncer != null) debouncer!.cancel();

    debouncer = Timer(duration, callback);
  }
}