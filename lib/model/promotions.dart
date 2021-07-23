class Promotions {
  String? promoName = null;
  String? tiffinName = null;


  Promotions(this.promoName, this.tiffinName);

  Promotions.fromJson(Map<String, dynamic> json)
      : promoName = json['promoName'],
        tiffinName = json['tiffinName']?? null;
}