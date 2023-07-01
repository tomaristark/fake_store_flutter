
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fake_store/constant/color.dart';
import 'package:fake_store/constant/dimen.dart';
import 'package:fake_store/constant/string.dart';
import 'package:fake_store/widget/easy_text_widget.dart';
import 'package:fake_store/widget/loading_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailItemView extends StatelessWidget {
  const ProductDetailItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(kSP10x),
      children: const [
        ProductImage(),
        SizedBox(
          height: kSP10x,
        ),
        ProductPrice(),
       ProductDesc(),
     SizedBox(
          height:kSP20x,
        ),
        ProductCreator(),
     BuyButton()
      ],
    );
  }
}

class BuyButton extends StatelessWidget {
  const BuyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
     padding: const EdgeInsets.symmetric(horizontal: kSP10x, vertical: kSP10x),
     child: MaterialButton(
       height: kBuyButtonH,
       minWidth: double.infinity,
       color: kButtonColor,
       onPressed: () {} ,
       child: const EasyText(
         text: kBuyText,
         fontWeight: FontWeight.bold,
       ),
     ),
    );
  }
  
}
class ProductCreator extends StatelessWidget {
  const ProductCreator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     EasyText(
      text: kCreator,
      fontWeight: FontWeight.w600,
      fontSize: kFS18x,
    ),
     SizedBox(
      height: kSP10x,
    ),
    EasyText(text: "jeaojepa")
      ],
    );
  }
}

class ProductDesc extends StatelessWidget {
  const ProductDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     const EasyText(
       text: kDescription,
       fontWeight: FontWeight.w600,
       fontSize: kFS18x,
     ),
     const SizedBox(
       height: kSP10x,
     ),
     EasyText(
       text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")

      ],
    );
  }
}

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
    const Icon(
      Icons.monetization_on_outlined,
      size: kIS30x,
    ),
    const SizedBox(
      width: kSP10x
    ),
    EasyText(text: "1000\$"),
      ],
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kSP300x,
      child: CachedNetworkImage(
        imageUrl: "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia-1024x681.jpg",
        placeholder: (context,url) =>const LoadingWidget(),
        errorWidget: (context, url, error) =>const Center(child: Icon(Icons.error)),
      ),
    );
  }
}