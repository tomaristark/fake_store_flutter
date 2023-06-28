import 'package:fake_store/utilities/extensions.dart';
import 'package:flutter/material.dart';

import '../utilities/random_color.dart';
import 'easy_text_widget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key,
  this.isIcon = false});

  final bool isIcon ;

  @override
  Widget build(BuildContext context) {
    return
    Card(
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: RandomColor.getRandomColor(),
            child: Center(
              child: EasyText(
                text: ("Sr pp lr nay kg lr").getPrefix(),
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ),
          title: const EasyText(
            text: ("Sr pp lr nay kg lr"),
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
          subtitle: const EasyText(
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem",
            fontWeight: FontWeight.w300,
            fontSize: 14,
            maxLine: 3,
          ),
          trailing: (isIcon)?
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.delete_forever),
        ):null,
      )
      );
  }
}