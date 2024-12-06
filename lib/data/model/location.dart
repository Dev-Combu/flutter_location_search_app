  // <title>조선옥</title>
  // <link />
  // <category>한식&gt;육류,고기요리</category>
  // <description>연탄불 한우갈비 전문점.</description>
  // <telephone></telephone>
  // <address>서울특별시 중구 을지로3가 229-1 </address>
  // <roadAddress>서울특별시 중구 을지로15길 6-5 </roadAddress>
  // <mapx>311277</mapx>
  // <mapy>552097</mapy>

class Location {
  String title;
  String link;
  String category;
  String description;
  String telephone;
  String address;
  String mapx;
  String mapy;

  Location({
    required this.title,
    required this.link,
    required this.category,
    required this.description,
    required this.telephone,
    required this.address,
    required this.mapx,
    required this.mapy,
  });

  Location.fromJson(Map<String, dynamic> map) : this(
    title: map['title'],
    link: map['link'],
    category: map['category'],
    description: map['description'],
    telephone: map['telephone'],
    address: map['address'],
    mapx: map['mapx'],
    mapy: map['mapy'],
  );

  Map<String, dynamic> toJson(){
    return{
      'title': title,
      'link': link,
      'category': category,
      'description': description,
      'telephone': telephone,
      'address': address,
      'mapx': mapx,
      'mapy': mapy,
    };
  }
}