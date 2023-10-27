// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../internet_cubit.dart';


class InternetChecking extends StatelessWidget {
  const InternetChecking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:BlocConsumer<InternetCubit, InternetState>(
            listener: (context, state) {
              if(state == InternetState.Gained) {
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Internet Connected'),backgroundColor: Colors.green,),
              );
              } else if(state == InternetState.Lost) {
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Internet Not Connected'),backgroundColor: Colors.red,),
              );
              }
            },
            builder: (context, state) {
              if(state ==InternetState.Gained) {
                return Text('Connected!');
              } else if(state ==InternetState.Lost) {
                  return Text('Not Connected!');
                } else {
                  return Text('Loding...');
                }
            },
          ),
        ),
      ),
    );
  }
}
