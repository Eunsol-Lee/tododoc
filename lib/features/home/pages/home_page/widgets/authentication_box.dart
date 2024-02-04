import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tododoc/shared/index.dart';

class AuthenticationBox extends HookWidget {
  const AuthenticationBox({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAF7F2),
      width: 456,
      height: 233,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '로그인',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Row(
                children: [
                  Text(
                    '아이디 기억',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const HorizontalGap(2),
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ],
          ),
          const VerticalGap(6),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 280,
                    height: 34,
                    padding: const EdgeInsets.all(4),
                    color: const Color(0xFFD9D9D9),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: '아이디',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const VerticalGap(10),
                  Container(
                    width: 280,
                    height: 34,
                    padding: const EdgeInsets.all(4),
                    color: const Color(0xFFD9D9D9),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '비밀번호',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              const HorizontalGap(6),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 78,
                    color: const Color(0xFFAEDEFC),
                    child: Text('Login', textAlign: TextAlign.center, style: Theme.of(context).textTheme.displaySmall),
                  ),
                ),
              )
            ],
          ),
          const VerticalGap(10),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'TODODOC 회원가입',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(
                        0xFF2073E9,
                      ),
                    ),
              ),
            ),
          ),
          const VerticalGap(10),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Text(
                  '아이디 찾기',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: const Color(
                          0xFF7C7C7C,
                        ),
                      ),
                ),
              ),
              const Text(
                ' / ',
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '비밀번호 찾기',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: const Color(
                          0xFF7C7C7C,
                        ),
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
