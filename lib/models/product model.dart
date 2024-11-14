class productmodel{
  String name;
  String description;
  String image;
  productmodel({required this.description,required this.name,required this.image});
  factory productmodel.fromjson(Map<String,dynamic>json){
    return productmodel(
        description: json["data"]["products"]["description"],
        name: json["data"]["products"]["name"],
        image: json["data"]["products"]["image"]
    );
  }
}