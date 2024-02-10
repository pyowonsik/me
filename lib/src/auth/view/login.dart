import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/src/common/layout/default_layout.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    return DefaultLayout(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email을 입력하세요.', // 힌트 텍스트
              border: InputBorder.none, // 밑줄 없애기
            ),
            onChanged: (val) {
              email = val;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Password를 입력하세요.', // 힌트 텍스트
              border: InputBorder.none, // 밑줄 없애기
            ),
            onChanged: (val) {
              password = val;
            },
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('로그인'))
        ],
      ),
    ));
  }
}
