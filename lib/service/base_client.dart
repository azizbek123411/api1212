import 'package:http/http.dart' as http;
const String baseUrl = 'https://631c37911b470e0e12fcdd0b.mockapi.io/api';
class BaseClinet{
  var client=http.Client();
  Future<dynamic> get(String api) async{
    var url=Uri.parse(baseUrl+api);
    var _headers={
      'Authorization':'ersd344654634543=',
      'api_key':'safsa324535432',
    };
    var response= await client.get(url,headers: _headers);
    if(response.statusCode==200){
      return response.body;
    }
  }
  Future<dynamic> post(String api) async{}
  Future<dynamic> put(String api) async{}
  Future<dynamic> delete(String api) async{}
}
