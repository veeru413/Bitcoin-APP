import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    Uri uri = Uri.parse(url);
    Response response = await get(uri);  //
    String? data;

    if(response.statusCode==200)
    {
      var decodedData = jsonDecode(response.body);
      return decodedData;
    }

    else
    {
      print(response.statusCode);
    }


    print(data);

  }

}