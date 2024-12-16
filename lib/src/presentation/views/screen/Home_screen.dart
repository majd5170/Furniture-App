
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/src/core/service/service.dart';
import 'package:furniture_app/src/presentation/cubits/cubit/product_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(ApiService())..fetchUsers(),  
      child: Scaffold(
        appBar: AppBar(title: const Text('product')),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductLoaded) {
              return ListView.builder(
                itemCount: state.product.length,
                itemBuilder: (context, index) {
                  final user = state.product[index];
                  return ListTile(
                    title: Text(user.weight.toString()),
                    subtitle: Text(user.title.toString())
                  );
                },
              );
            } else if (state is ProductError) {
              return Center(child: Text('Error: ${state.message}'));
            } else {
              return const Center(child: Text('No data available.'));
            }
          },
        ),
      ),
    );
  }
}
