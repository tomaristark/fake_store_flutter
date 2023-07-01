
import 'package:fake_store/data/vos/product_vo/product_vo.dart';

abstract class FakeStoreDataAgent{

  Future<List<ProductVO>?> getAllProducts();
}