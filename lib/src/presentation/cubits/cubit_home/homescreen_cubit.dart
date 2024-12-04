import 'package:bloc/bloc.dart';
import 'package:furniture_app/src/core/domain/models/error_model.dart';
import 'package:furniture_app/src/core/domain/models/exception_model.dart';
import 'package:furniture_app/src/core/domain/models/general_model.dart';
import 'package:furniture_app/src/core/domain/models/product_model.dart';
import 'package:furniture_app/src/core/service/service.dart';
import 'package:meta/meta.dart';

part 'homescreen_state.dart';

class HomescreenCubit extends Cubit<HomescreenState> {
  HomescreenCubit() : super(HomescreenInitial());
  @override
  void emit(HomescreenState state)async{
    try {
        emit(LoadingHomeState());
        GeneralModel result  = await NerdsService().getAllProducts();
        if (result is ProductModel) {
          emit(SuccessToLoadHomeState(products: result));
        } else if (result is ErrorModel) {
          emit(ErrorHomeState(errorMessage: result));
        } 
    } catch (e) {
           emit(ExceptionHomeState(e.toString()));
    }        
  }

}
