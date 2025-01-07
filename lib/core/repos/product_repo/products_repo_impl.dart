import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dash_board/core/repos/product_repo/products_repo.dart';
import '../../../features/add_product/data/models/product_model.dart';
import '../../../features/add_product/domain/entities/product_entity.dart';
import '../../errors/failures.dart';
import '../../services/data_service.dart';
import '../../utils/backend_endpoint.dart';

class ProductsRepoImpl implements ProductsRepo {
  final DatabaseService databaseService;

  ProductsRepoImpl(this.databaseService);
  @override
  Future<Either<Failure, void>> addProduct(
      ProductEntity addProductInputEntity) async {
    try {
      await databaseService.addData(
        path: BackendEndpoint.productsCollection,
        data: ProductModel.fromEntity(addProductInputEntity).toJson(),
      );

      return const Right(null);
    } catch (e) {
      return Left(ServerFailure('Failed to add product'));
    }
  }
}
