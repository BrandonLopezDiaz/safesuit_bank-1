import 'dart:ffi';

class TransferEntity{
  final String numbercardtransfer;
  final String ownertransfer;
  final String bankNametransfer;
  final Float amountransfer;

  TransferEntity ({
    required this.numbercardtransfer,
    required this.ownertransfer,
    required this.bankNametransfer,
    required this.amountransfer
  });
}