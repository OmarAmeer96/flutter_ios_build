import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop_flow/core/networking/api_constants.dart';
import 'package:shop_flow/features/home/data/models/product.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Get All Products
  @GET(ApiConstants.getAllProducts)
  Future<Product> getAllProducts();
}
