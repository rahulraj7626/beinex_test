import 'package:beinex_test/src/home/data/datasources/home_apis.dart';
import 'package:get/get.dart';

import '../../../http/http_service.dart';
import '../../../http/http_service_impl.dart';
import '../models/grid_item_model.dart';
import '../../domain/repositories/home_repository.dart';

///Implemetation of Homerepository
class HomeRepositoryImpl implements HomeRepository {
  late HttpService _httpService;
  HomeRepositoryImpl() {
    _httpService = Get.put(HttpServiceRequests());
  }

  @override
  Future<List<GridItem>>? getHomeData() async {
    List myList = await _httpService.get(HomeAPIs.loadHome);
    return myList.map((e) => GridItem.fromJson(e)).toList();
  }
}
