// 다이러리 wirte

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me/src/common/layout/default_layout.dart';

class WriteDiary extends ConsumerWidget {
  const WriteDiary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultLayout(
        title: 'Write Diary',
        body: Column(
          children: [Text('제목')],
        ));
  }
}
