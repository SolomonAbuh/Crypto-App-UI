class CryptoData {
  final String coinName;
  final String coinSlug;
  final String iconAsset;
  final String amount;
  final bool rise;
  final String percent;
  const CryptoData({
    required this.iconAsset,
    required this.coinSlug,
    required this.rise,
    required this.coinName,
    required this.amount,
    required this.percent,
  });
}
