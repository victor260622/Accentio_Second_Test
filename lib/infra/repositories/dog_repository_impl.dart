import '../../domain/repositories/dog_repository.dart';
import '../datasources/dog_datasource.dart';
class DogRepositoryImpl implements IDogRepository {
  final IDogDatasource datasource;
  DogRepositoryImpl(this.datasource);

  @override
  Future<String> fetchDog() async {
    final response = await datasource.fetchDog();
    return response;
  }
}
