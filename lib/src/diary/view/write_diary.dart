// 다이러리 wirte

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WriteDiary extends ConsumerWidget {
  const WriteDiary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text('Write Diary'),
      ),
    );
  }
}
