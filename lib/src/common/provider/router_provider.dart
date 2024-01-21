import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:me/src/common/view/root_tab.dart';
import 'package:me/src/diary/view/write_diary.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(routes: [
    GoRoute(path: '/', builder: (_, state) => const RootTab()),
    GoRoute(path: '/write_diary', builder: (_, state) => const WriteDiary())
  ]);
});
