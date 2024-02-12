import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:me/src/auth/view/login.dart';
import 'package:me/src/auth/view/signup.dart';
import 'package:me/src/common/view/root_tab.dart';
import 'package:me/src/diary/bloc/diary_bloc.dart';
import 'package:me/src/diary/repository/diary_repository.dart';
import 'package:me/src/diary/view/read_diary.dart';
import 'package:me/src/diary/view/write_diary.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
            create: (context) =>
                DiaryRepository(baseUrl: 'http://127.0.0.1:3000', dio: Dio())),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DiaryBloc(
              diaryRepository: context.read<DiaryRepository>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          theme: ThemeData(
            fontFamily: 'NotoSans',
          ),
          routerConfig: GoRouter(
            // redirect 로직 추가 user정보 있다면
            initialLocation: '/login',

            routes: [
              GoRoute(path: '/', builder: (context, state) => const RootTab()),
              GoRoute(
                  path: '/signup', builder: (context, state) => const SignUp()),
              GoRoute(
                  path: '/login', builder: (context, state) => const Login()),
              GoRoute(
                  path: '/write_diary',
                  builder: (context, state) => const WriteDiary()),
              GoRoute(
                  path: '/read_diary',
                  builder: (context, state) => const ReadDiary()),
            ],
          ),
        ),
      ),
    );
  }
}
