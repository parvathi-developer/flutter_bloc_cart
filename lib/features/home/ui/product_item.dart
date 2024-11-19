import 'package:bloc_cart/features/home/model/ProductModel.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Productmodel productmodel;
  const ProductItem({super.key, required this.productmodel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(productmodel.imageUrl!))),
          ),
          const SizedBox(height: 20),
          Text(
            productmodel.name ?? "Item ",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(productmodel.description ?? ""),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$" + productmodel.price.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag_outlined)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
