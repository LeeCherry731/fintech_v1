class TraderPrice {
  double bid;
  double ask;
  double ask99Bg1;
  double bid99Bg1;
  double ask96Bg1;
  double bid96Bg1;
  double thb;
  double askAss;
  double bidAss;
  String status;
  double spotno;

  TraderPrice({
    required this.bid,
    required this.ask,
    required this.ask99Bg1,
    required this.bid99Bg1,
    required this.ask96Bg1,
    required this.bid96Bg1,
    required this.thb,
    required this.askAss,
    required this.bidAss,
    required this.status,
    required this.spotno,
  });

  factory TraderPrice.fromJson(Map<String, dynamic> json) {
    return TraderPrice(
      bid: json['bid'],
      ask: json['ask'],
      ask99Bg1: json['ask99Bg1'],
      bid99Bg1: json['bid99Bg1'],
      ask96Bg1: json['ask96Bg1'],
      bid96Bg1: json['bid96Bg1'],
      thb: json['thb'],
      askAss: json['askAss'],
      bidAss: json['bidAss'],
      status: json['status'],
      spotno: json['spotno'],
    );
  }
}
