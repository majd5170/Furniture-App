// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:furniture_app/src/core/utils/widgets/textField_widget.dart';
// import 'package:furniture_app/src/presentation/cubits/cubit_home/homescreen_cubit.dart';
//
// class HomeScreen extends StatefulWidget {
//    HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   TextEditingController SearchProduct = TextEditingController();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//
//     // BlocProvider.of<HomescreenCubit>(context)..();
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: BlocBuilder<HomescreenCubit, HomescreenState>(
//         builder: (context, state) {
//           if (state is SuccessToLoadHomeState) {
//              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successful!')),);
//             return Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Column(
//               children: [
//                 TextFieldWidgets(
//                   controller: SearchProduct,
//                   labeltext: 'Search Furniture',
//                   hinttext: 'Search Furniture',
//                   inputType: TextInputType.text,
//                 ),
//                 ListView.builder(
//                   itemCount: state.product.length,
//                                 itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(state.product[index].brand),
//                      );
//                    }
//                   ),
//               ],
//               )
//             );
//           } else if (state is ErrorHomeState) {
//                     return Center(
//                       child: Text('There is error'),
//                     );
//                   }  else {
//                     return Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   }
//         },
//       )
//       );
//   }
// }
//
//



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/service/service.dart';
import '../../cubits/cubit_home/homescreen_cubit.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void initState() {
    // TODO: implement initState

    // BlocProvider.of<HomescreenCubit>(context)..();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomescreenCubit(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Users')),
        body: BlocBuilder<HomescreenCubit, HomescreenState>(
          builder: (context, state) {
            if (state is LoadingHomeState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SuccessToLoadHomeState) {
              return ListView.builder(
                itemCount: state.product.length,
                itemBuilder: (context, index) {
                  final product = state.product[index];
                  return ListTile(
                    title: Text(product.brand),
                    subtitle: Text(product.title),
                  );
                },
              );
            } else if (state is ErrorHomeState) {
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

