import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loop_page_view/loop_page_view.dart';

LoopPageController useLoopPageController({
  int initialPage = 0,
  bool keepPage = true,
  double viewportFraction = 1.0,
  List<Object?>? keys,
}) {
  return use(
    _LoopPageControllerHook(
      initialPage: initialPage,
      keepPage: keepPage,
      viewportFraction: viewportFraction,
      keys: keys,
    ),
  );
}

class _LoopPageControllerHook extends Hook<LoopPageController> {
  const _LoopPageControllerHook({
    required this.initialPage,
    required this.keepPage,
    required this.viewportFraction,
    List<Object?>? keys,
  }) : super(keys: keys);

  final int initialPage;
  final bool keepPage;
  final double viewportFraction;

  @override
  HookState<LoopPageController, Hook<LoopPageController>> createState() =>
      _LoopPageControllerHookState();
}

class _LoopPageControllerHookState
    extends HookState<LoopPageController, _LoopPageControllerHook> {
  late final controller = LoopPageController(
    initialPage: hook.initialPage,
    keepPage: hook.keepPage,
    viewportFraction: hook.viewportFraction,
  );

  @override
  LoopPageController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();

  @override
  String get debugLabel => 'useLoopPageController';
}
