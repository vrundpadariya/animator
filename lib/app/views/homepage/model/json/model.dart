class AllData {
  String image;
  String name;
  String content;
  String source;
  String rotation;
  String revolution;
  String radius;
  String temperature;
  String moon;

  AllData(
      {required this.image,
      required this.content,
      required this.name,
      required this.radius,
      required this.revolution,
      required this.rotation,
      required this.source,
      required this.temperature,
      required this.moon});

  factory AllData.fromjson({required Map data}) {
    return AllData(
        image: data['image'],
        content: data['content'],
        name: data['name'],
        radius: data['radius'],
        revolution: data['revolution'],
        rotation: data['rotation'],
        source: data['source'],
        temperature: data['temperature'],
        moon: data['moon']);
  }
}
