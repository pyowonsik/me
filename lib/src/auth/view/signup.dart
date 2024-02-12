import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/src/auth/model/auth_model.dart';
import 'package:me/src/common/layout/default_layout.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // AuthModel user = AuthModel(email: '', password: '', nickName: '');
    String email = '';
    String password = '';
    String nickName = '';
    return DefaultLayout(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email을 입력하세요.',
              border: InputBorder.none,
            ),
            onChanged: (val) {
              email = val;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Password를 입력하세요.',
              border: InputBorder.none,
            ),
            onChanged: (val) {
              password = val;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'NickName을 입력하세요.',
              border: InputBorder.none,
            ),
            onChanged: (val) {
              nickName = val;
            },
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              child: const Text('회원가입')),
        ],
      ),
    ));
  }
}
