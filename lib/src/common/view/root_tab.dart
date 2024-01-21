import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me/src/common/provider/router_provider.dart';

class RootTab extends ConsumerStatefulWidget {
  const RootTab({super.key});

  @override
  ConsumerState<RootTab> createState() => _RootTabState();
}

class _RootTabState extends ConsumerState<RootTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Root Tab"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(routerProvider).go('/write_diary');
        },
        child: Icon(Icons.edit), // "글쓰기"와 관련된 아이콘 사용
        tooltip: '글쓰기', // 마우스를 버튼 위에 가져다 놓을 때 표시될 툴팁
      ),
    );
  }
}
