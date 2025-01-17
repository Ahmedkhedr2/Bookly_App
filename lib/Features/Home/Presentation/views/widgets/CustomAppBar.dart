import 'package:bookly_app/Core/utils/AppRouter.dart';
import 'package:bookly_app/Core/utils/Assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 52, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.Logo,
            height: 20,
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Approuter.KSearchView);
            },
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
