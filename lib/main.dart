
import 'package:fake_store/data/model/fake_store_model_impl.dart';
import 'package:fake_store/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'data/model/fake_store_model.dart';

void main() {
  runApp(const MyApp());
  final FakeStoreModel _fake = FakeStoreModelImpl();
  _fake.getAllProducts().then((value){
    print("product ==>$value");
  }).catchError((error)=> print("error => $error"));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}