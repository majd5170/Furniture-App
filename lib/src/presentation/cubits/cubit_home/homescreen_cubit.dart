// import 'package:bloc/bloc.dart';
// import 'package:furniture_app/src/core/domain/models/error_model.dart';
// import 'package:furniture_app/src/core/domain/models/general_model.dart';
// import 'package:furniture_app/src/core/service/service.dart';
// import 'package:meta/meta.dart';

// import '../../../core/domain/models/product_model.dart';

// part 'homescreen_state.dart';

// class HomescreenCubit extends Cubit<HomescreenState> {

//   HomescreenCubit() : super(HomescreenInitial());


//   void fetchUsers() async {
//     try {
//       emit(LoadingHomeState());  // Show loading state
//       final product = await ApiService().fetchUsers();
//       emit(SuccessToLoadHomeState(product));  // Emit loaded state with users
//     } catch (e) {
//       emit(ErrorHomeState(e.toString()));  // Emit error state
//     }
//   }
// }

// //   Future<void> loadHomeScreen() async {
// //     emit(LoadingHomeState());
// //     try {
// //       GeneralModel result = await FurnitureService().getAllProducts();
// //       print(result.runtimeType);
// //       if (result is ItemsProductModel) {
// //         emit(SuccessToLoadHomeState(items:result));
// //       } else if (result is ErrorModel) {
// //         emit(ErrorHomeState(errorMessage: result.errorMessage));
// //       } else {
// //         emit(ErrorHomeState(errorMessage: "Unknown error occurred"));
// //       }
// //     } catch (e) {
// //       emit(ExceptionHomeState("An error occurred: ${e.toString()}"));
// //     }
// //   }
// // }
