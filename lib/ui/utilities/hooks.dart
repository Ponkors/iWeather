import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

/// Creates a [FloatingSearchBarController].
FloatingSearchBarController useFloatingSearchBarController() {
  final controller = useMemoized(
    () => FloatingSearchBarController(),
    const [],
  );

  useEffect(() => controller.dispose, const []);

  return controller;
}

/// Creates a [GlobalKey] that stays the same tilll the widget's lifetime ends.
GlobalKey<T> useGlobalKey<T extends State<StatefulWidget>>() =>
    // An empty list is given to `useMemoized` so that the global key will
    // never be reset. See `useMemoized`'s documentation.
    useMemoized(() => GlobalKey<T>(), const []);
