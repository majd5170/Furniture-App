part of 'homescreen_cubit.dart';

@immutable
sealed class HomescreenState {}

final class HomescreenInitial extends HomescreenState {}

final class LoadingHomeState extends HomescreenState {}


final class SuccessToLoadHomeState extends HomescreenState {
  ProductModel products;
  SuccessToLoadHomeState({
    required this.products
  });
}


final class ErrorHomeState extends HomescreenState {
  ErrorModel errorMessage;
  ErrorHomeState({
    required this.errorMessage,
  });
  
}


final class ExceptionHomeState extends HomescreenState {
  final String message;

  ExceptionHomeState(this.message);

}
