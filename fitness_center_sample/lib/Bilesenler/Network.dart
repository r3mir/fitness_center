import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

FlutterSecureStorage storage = const FlutterSecureStorage();

class Network
{
  final String url;

  Network(this.url);

  static Dio dio = Dio();

  static const String baseUrl = "https://reqres.in/api/";

  Future<dynamic> get ({String? adres, dynamic parametre, dynamic data}) async => await _process("Get", adres, parametre, data);

  Future<dynamic> post (dynamic data, {String? adres, dynamic parameter}) async => await _process("Post", adres, parameter, data);

  Future<dynamic> put (dynamic data, {String? adres, dynamic parameter}) async => _process("Put", adres, parameter, data);

  Future<dynamic> delete (String? adres, {dynamic parametre, dynamic data}) async => _process("Delete", adres, parametre, data);

  Future<dynamic> _process (String process, String? adres, dynamic parameter, dynamic data) async
  {
    Response? response;
    try
    {
      adres = adres == null ? "" : "/$adres";
      switch (process)
      {
        case "Get":
          response = await dio.get("$baseUrl$url$adres", queryParameters: parameter, data: data);
          return response.data;

        case "Post":
          response = await dio.post("$baseUrl$url$adres", queryParameters: parameter, data: data);
          return response.data;

        case "Put":
          response = await dio.put("$baseUrl$url$adres", queryParameters: parameter, data: data);
          return response.data;

        case "Delete":
          response = await dio.delete("$baseUrl$url$adres", queryParameters: parameter, data: data);
          return response.data;
      }
    }
    on DioError catch (e)
    {
      throw (e.response!=null) ? (e.response!.toString()) : e;
    }
    catch (e)
    {
      rethrow;
    }
  }
}