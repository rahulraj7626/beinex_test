import '../../data/models/grid_item_model.dart';

abstract class HomeRepository {
  Future<List<GridItem>>? getHomeData();
}
