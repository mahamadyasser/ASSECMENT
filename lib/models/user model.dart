class usermodel{
  Map<String,dynamic>data;
  bool status;
  usermodel({required this.data,required this.status});
  factory usermodel.fromjson(Map<String,dynamic>json){

    return usermodel(data: json["data"], status: json["status"]);
  }


}