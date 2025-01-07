

import 'package:fruit_hub_dash_board/core/services/stoarage_service.dart';
import 'package:get_it/get_it.dart';

import '../repos/images_repo/images_repo.dart';
import '../repos/images_repo/images_repo_impl.dart';
import '../repos/product_repo/products_repo.dart';
import '../repos/product_repo/products_repo_impl.dart';
import 'data_service.dart';
import 'fire_storage.dart';
import 'firestore_service.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<StoarageService>(FireStorage());
  getIt.registerSingleton<DatabaseService>(FireStoreService());

  getIt.registerSingleton<ImagesRepo>(
      ImagesRepoImpl(getIt.get<StoarageService>()));
  getIt.registerSingleton<ProductsRepo>(
    ProductsRepoImpl(
      getIt.get<DatabaseService>(),
    ),
  );
}