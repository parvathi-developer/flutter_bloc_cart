import 'package:bloc_cart/features/home/model/ProductModel.dart';

abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<Productmodel> productList;
  HomeLoaded(this.productList);
}

class ErrorMsg extends HomeState {
  String errorMessage;
  ErrorMsg(this.errorMessage);
}
