
import 'package:fake_store/pages/cart_page.dart';
import 'package:fake_store/utilities/extensions.dart';
import 'package:fake_store/widget/product_widget.dart';
import 'package:flutter/material.dart';



class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.navigateNextScreen(CartPage());
        },
        icon: Stack(children: [
          const SizedBox(
              width: 100, height: 100, child: Icon(Icons.shopping_cart)),
          Positioned(
            left: 17,
            bottom: 20,
            child: CartProductCount(),
          )
        ]));
  }
}

class CartProductCount extends StatelessWidget {
  const CartProductCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child:  Padding(
        padding: EdgeInsets.only(left: 5, top: 2),
        child: Text(
          "0",
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

class ProductItemView extends StatelessWidget {
  const ProductItemView({super.key, required this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onTap(),
      child: const ProductWidget()
    );
  }
}
