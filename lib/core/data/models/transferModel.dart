import 'dart:ffi';

import 'package:safesuit_bank/core/domain/entities/transfer.dart';

class TransferModel{
  final String numbercardtransfer;
  final String ownertransfer;
  final String bankNametransfer;
  final Float amountransfer;

  TransferModel ({
    required this.numbercardtransfer,
    required this.ownertransfer,
    required this.bankNametransfer,
    required this.amountransfer
  });

  factory TransferModel.fromEntity(TransferEntity transfer){
    return TransferModel(numbercardtransfer: transfer.numbercardtransfer, ownertransfer: transfer.ownertransfer, bankNametransfer: transfer.bankNametransfer, amountransfer: transfer.amountransfer);
  }
}