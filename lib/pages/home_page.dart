
import 'package:fake_store/constant/dimen.dart';
import 'package:fake_store/constant/string.dart';
import 'package:fake_store/pages/detail_page.dart';
import 'package:fake_store/utilities/extensions.dart';
import 'package:flutter/material.dart';

import '../item_view/home_page_item_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(kFakeStore),
        actions:const  [
          CartButton()
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context,index){
          return ProductItemView(
            onTap: () => context.navigateNextScreen(DetailPage())
            );
        },
         separatorBuilder: (context,index){
          return const SizedBox(
            height: kSP10x,
          );
        },
         itemCount: 10)
      );
  }
}