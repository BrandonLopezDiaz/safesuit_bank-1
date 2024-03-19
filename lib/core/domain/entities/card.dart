class CardEntity{
  final String number;
  final int ccv;
  final String expireDate;
  final String owner;
  final String bankName;

  CardEntity ({required this.number,
    required this.ccv,
    required this.expireDate,
    required this.owner,
    required this.bankName
  });
}
