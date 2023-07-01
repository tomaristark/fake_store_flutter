
import 'package:fake_store/data/vos/product_vo/product_vo.dart';

abstract class FakeStoreModel{

  Future<List<ProductVO>?> getAllProducts();
}