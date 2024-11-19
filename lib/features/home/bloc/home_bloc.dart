import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_cart/data/GroceryData.dart';
import 'package:bloc_cart/features/home/bloc/home_item.dart';
import 'package:bloc_cart/features/home/bloc/home_state.dart';
import 'package:bloc_cart/features/home/model/ProductModel.dart';
import 'package:bloc_cart/service/api_service.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ApiService apiService;
  HomeBloc(this.apiService) : super(HomeLoading()) {
    on<FetchHomeItem>(fetchHomeEvent);
  }

  FutureOr<void> fetchHomeEvent(
      FetchHomeItem event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      await Future.delayed(Duration(seconds: 5));
      List<Productmodel> productModel = await apiService.getItems();
      emit(HomeLoaded(productModel));
    } catch (e) {
      emit(ErrorMsg("Unable to load"));
    }
  }
}
