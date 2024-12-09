import 'package:flutter_location_search_app/data/model/location.dart';
import 'package:flutter_location_search_app/data/repository/location_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeState{
  List<Location> location;
  HomeState(this.location);
}

class HomeViewModel extends Notifier<HomeState>{
  @override
  HomeState build() {
    return HomeState([]);
  }

  Future<void> searchLocation(String query) async{
    final locationRepository = LocationRepository();
    final location = await locationRepository.searchLocation(query);
    state = HomeState(location);
  }
}

final homeViewModelProvider = NotifierProvider<HomeViewModel, HomeState>((){
  return HomeViewModel();
});