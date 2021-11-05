import 'detail_repository.dart';
import 'flash_repository.dart';
import 'home_repository.dart';

class Repository {
  FlashRepository flashRepository = FlashRepository();
  HomeRepository homeRepository = HomeRepository();
  DetailRepository detailRepository = DetailRepository();
}
