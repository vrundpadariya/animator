class AllData {
  String image;
  String name;
  String color;
  String content;
  String source;
  String rotation;
  String home;
  String revolution;
  String radius;
  String temperature;
  String moon;

  AllData(
      {required this.image,
      required this.content,
      required this.name,
      required this.home,
      required this.radius,
      required this.revolution,
      required this.rotation,
      required this.source,
      required this.temperature,
      required this.color,
      required this.moon});

  factory AllData.fromjson({required Map data}) {
    return AllData(
      image: data['image'],
      content: data['content'],
      name: data['name'],
      home: data['home'],
      radius: data['radius'],
      revolution: data['revolution'],
      rotation: data['rotation'],
      source: data['source'],
      temperature: data['temperature'],
      color: data['color'],
      moon: data['moon'],
    );
  }
}
