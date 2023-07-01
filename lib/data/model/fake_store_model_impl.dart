
import 'package:fake_store/data/model/fake_store_model.dart';
import 'package:fake_store/data/vos/product_vo/product_vo.dart';
import 'package:fake_store/network/data_agent/fake_store_data_agent.dart';
import 'package:fake_store/network/data_agent/fake_store_data_agent_impl.dart';

class FakeStoreModelImpl extends FakeStoreModel{

  FakeStoreModelImpl._();
  
  static final  FakeStoreModelImpl _singleton =FakeStoreModelImpl._();

  factory FakeStoreModelImpl() => _singleton;

  final FakeStoreDataAgent _fakeStoreDataAgent =FakeStoreDataAgentImpl();
  @override
  Future<List<ProductVO>?> getAllProducts() {
    return _fakeStoreDataAgent.getAllProducts();
  }
  
}