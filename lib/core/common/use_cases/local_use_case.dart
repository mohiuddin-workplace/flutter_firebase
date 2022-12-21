import '../repositories/local_repository.dart';
import '../responses/local_response.dart';

class LocalUseCase {
  final LocalRepository repository;

  const LocalUseCase({
    required this.repository,
  });

  bool isAvailable(String key, List<dynamic>? list) =>
      repository.isAvailable(key, list);

  Future<bool?> alreadyAdded({
    required String collectionKey,
    required String documentKey,
  }) {
    return repository.alreadyAdded(
      collectionKey: collectionKey,
      documentKey: documentKey,
    );
  }

  Future<LocalResponse<List<dynamic>>> insert({
    required String path,
    required String key,
    required dynamic data,
  }) {
    return repository.insert(
      path: path,
      key: key,
      data: data,
    );
  }

  Future<LocalResponse<List<dynamic>>> remove({
    required String path,
    required String key,
    required dynamic data,
  }) {
    return repository.remove(
      path: path,
      key: key,
      data: data,
    );
  }

  Future<LocalResponse<List<dynamic>>> getCollection({
    required String collectionKey,
  }) {
    return repository.getCollection(collectionKey: collectionKey);
  }

  Future<LocalResponse<List<dynamic>>> setCollection({
    required String collectionKey,
    required List<dynamic> collection,
  }) {
    return repository.setCollection(
        collectionKey: collectionKey, collection: collection);
  }

  Future<LocalResponse<void>> clear({
    required String collectionKey,
  }) {
    return repository.clear(collectionKey: collectionKey);
  }
}
