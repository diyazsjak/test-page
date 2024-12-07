class SubscriptionModel {
  final String duration;
  final String description;
  final String price;
  final String? originalPrice;
  final List<String> detailsList;

  SubscriptionModel({
    required this.duration,
    required this.description,
    required this.price,
    this.originalPrice,
    required this.detailsList,
  });
}
