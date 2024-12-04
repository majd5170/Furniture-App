import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/src/core/utils/widgets/textField_widget.dart';
import 'package:furniture_app/src/presentation/cubits/cubit/homescreen_cubit.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  TextEditingController SearchProduct = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomescreenCubit, HomescreenState>(
        builder: (context, state) {
          if (state is SuccessToLoadHomeState) {
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successful!')),);
            return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                TextFieldWidgets(
                  controller: SearchProduct,
                  labeltext: 'Search Furniture',
                  hinttext: 'Search Furniture',
                  inputType: TextInputType.text,
                ),
                ListView.builder(
                  itemCount: state.products.id,
                  itemBuilder:  (context, index) {
                    return ListTile(
                      title: Text('successful!${state.products.title}'),
                    );
                  }
                  ),
              ],
              )
            );  
          } else if (state is ErrorHomeState) {
                    return Center(
                      child: Text('There is error'),
                    );
                  }  else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
        },
      )
      );
  }
}


