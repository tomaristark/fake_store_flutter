

import 'package:dio/dio.dart';
import 'package:fake_store/data/vos/product_vo/product_vo.dart';
import 'package:fake_store/network/api/fake_store_api.dart';
import 'package:fake_store/network/data_agent/fake_store_data_agent.dart';

class FakeStoreDataAgentImpl extends FakeStoreDataAgent{

    late FakeStoreAPI _fakeStoreAPI;

    FakeStoreDataAgentImpl._(){
      _fakeStoreAPI =FakeStoreAPI(Dio());
    }

    static final FakeStoreDataAgentImpl _singleton = FakeStoreDataAgentImpl._();

    factory FakeStoreDataAgentImpl()=>_singleton;
  @override
  Future<List<ProductVO>?> getAllProducts() {
    return _fakeStoreAPI.getAllProducts();
  }
  
}