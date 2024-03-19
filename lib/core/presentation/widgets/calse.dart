import 'package:flutter/material.dart';
import 'package:safesuit_bank/core/domain/entities/user.dart';


class demo1 extends StatelessWidget{
  final User user;
  demo1 ({required this.user});
  @override
  Widget build(BuildContext context){
    return Text(user.email);
  }
}