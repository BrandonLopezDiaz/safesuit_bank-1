import 'package:safesuit_bank/core/domain/entities/retiroqr.dart';

class RetiroqrModel {

  final String username;
  final double cantRetirar;
  final double saldoDisponible;

  RetiroqrModel ({required this.username,
  required this.cantRetirar,
  required this.saldoDisponible,
  });

  factory RetiroqrModel.fromEntity(RetiroEntity retiroqrentity){
    return RetiroqrModel(username: retiroqrentity.username, cantRetirar: retiroqrentity.cantRetirar, saldoDisponible: retiroqrentity.saldoDisponible);
  }
}