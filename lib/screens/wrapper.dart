// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'home.dart';
//import 'pakage:todayapp/screens/home/home.dart';
import 'package:flutter/material.dart';

import '../models/FirebaseUser.dart';
import 'authenticate/handler.dart';

class Wrapper extends StatelessWidget{
  const Wrapper({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    
    final user =  Provider.of<FirebaseUser?>(context);
    
     if(user == null)
     {
       return const Handler();
     }else
     {
       return const Home();
     }
       }
}
