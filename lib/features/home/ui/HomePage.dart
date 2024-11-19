import 'package:bloc_cart/features/home/bloc/home_bloc.dart';
import 'package:bloc_cart/features/home/bloc/home_item.dart';
import 'package:bloc_cart/features/home/bloc/home_state.dart';
import 'package:bloc_cart/features/home/model/ProductModel.dart';
import 'package:bloc_cart/features/home/ui/product_item.dart';
import 'package:bloc_cart/style/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(FetchHomeItem());
    return MaterialApp(
      theme: ThemeModel.lightTheme,
      darkTheme: ThemeModel.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bloc List view",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          if (state is HomeLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is HomeLoaded) {
            return ListView.builder(
                itemCount: state.productList.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    productmodel: state.productList[index],
                  );
                });
          }
          if (state is ErrorMsg) {
            return Center(
              child: Text(state.errorMessage),
            );
          }

          return SizedBox();
        })),
      ),
    );
  }

  Widget loadSilverList(List<Productmodel> productList) {
    return ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ProductItem(productmodel: productList[index]);
        });
  }
}
