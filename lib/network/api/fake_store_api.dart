
import 'package:dio/dio.dart';
import 'package:fake_store/constant/api_constant.dart';
import 'package:fake_store/data/vos/product_vo/product_vo.dart';
import 'package:retrofit/retrofit.dart';

part 'fake_store_api.g.dart';
@RestApi(baseUrl: kBaseURl)
abstract class FakeStoreAPI{

  factory FakeStoreAPI(Dio dio)=> _FakeStoreAPI(dio);

  @GET(kAllProducts)
  Future<List<ProductVO>?> getAllProducts();

  
}