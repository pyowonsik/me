import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:me/src/common/view/root_tab.dart';
import 'package:me/src/diary/view/write_diary.dart';

void main() {
  runApp(const _App());
}

class _App extends ConsumerWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = ref.watch(routerProvider);
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      routerConfig: GoRouter(
        routes: [
          GoRoute(path: '/', builder: (_, state) => const RootTab()),
          // GoRoute(
          //     path: '/write_diary', builder: (_, state) => const WriteDiary())
        ],
      ),
    );
  }
}
