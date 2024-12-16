import 'package:bloc/bloc.dart';
import 'package:furniture_app/src/core/domain/models/product_model.dart';
import 'package:furniture_app/src/core/service/service.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ApiService apiService;
  ProductCubit(this.apiService) : super(ProductInitial());

  void fetchUsers() async {
    try {
      emit(ProductLoading());  
      final users = await apiService.fetchUsers();
      emit(ProductLoaded(users)); 
    } catch (e) {
      emit(ProductError(e.toString()));  
    }
  }
}
