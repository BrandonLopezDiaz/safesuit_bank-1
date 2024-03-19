import 'package:safesuit_bank/core/domain/entities/card.dart';

class CardModel{
  final String number;
  final int ccv;
  final String expireDate;
  final String owner;
  final String bankName;

  CardModel ({required this.number,
    required this.ccv,
    required this.expireDate,
    required this.owner,
    required this.bankName,
  });

  factory CardModel.fromEntity(CardEntity card){
    return CardModel(number: card.number, ccv: card.ccv, expireDate: card.expireDate, owner: card.owner, bankName: card.bankName);
  }
}
