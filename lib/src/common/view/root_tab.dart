import 'package:flutter/material.dart';
import 'package:me/src/common/layout/default_layout.dart';
import 'package:me/src/diary/bloc/diary_bloc.dart';
import 'package:me/src/diary/repository/diary_repository.dart';
import 'package:me/src/diary/view/diary.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootTab extends StatefulWidget {
  const RootTab({super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  var index = 0;
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(tabListenr);
  }

  void tabListenr() {
    setState(() {
      index = controller.index;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: TabBarView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(),
            RepositoryProvider(
              create: (context) => DiaryRepository(),
              child: BlocProvider(
                create: (context) =>
                    DiaryBloc(diaryRepository: context.read<DiaryRepository>()),
                child: Diary(),
              ),
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 10,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            controller.animateTo(index);
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: '홈'),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit_outlined), label: '일기'),
          ]),
    );
  }
}
