import 'package:fake_store/constant/string.dart';
import 'package:fake_store/item_view/detail_page_item_view.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(kAllinOne),
      ),
      body:const  ProductDetailItemView(),
    );
  }
}