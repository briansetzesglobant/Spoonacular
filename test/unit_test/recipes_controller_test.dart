import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:spoonacular/src/core/resource/data_state.dart';
import 'package:spoonacular/src/data/model/recipes_list_model.dart';
import 'package:spoonacular/src/domain/use_case/implementation/recipes_use_case.dart';
import 'package:spoonacular/src/presentation/controller/recipes_controller.dart';
import '../utils/mock_data_test.dart';
import 'recipes_controller_test.mocks.dart';

@GenerateMocks([
  RecipesUseCase,
])
void main() {
  late RecipesController recipesController;
  late RecipesUseCase recipesUseCase;
  late DataState<RecipesListModel> dataStateSuccess;
  late DataState<RecipesListModel> dataStateEmpty;
  late DataState<RecipesListModel> dataStateFailed;

  setUp(() {
    recipesUseCase = MockRecipesUseCase();
    Get.replace(recipesUseCase);
    recipesController = RecipesController();
    final RecipesListModel recipesListModel = RecipesListModel.fromJson(
      recipesListModelJsonSuccess,
    );
    dataStateSuccess = DataSuccess(recipesListModel);
    dataStateEmpty = const DataEmpty();
    dataStateFailed = const DataFailed('error');
  });

  group('Recipes controller test', () {
    test(
      'getRecipesRandom() should get the status success',
      () async {
        when(recipesUseCase()).thenAnswer((_) async => dataStateSuccess);
        recipesController.getRecipesRandom();
        verify(recipesUseCase()).called(1);
      },
    );

    test(
      'getRecipesRandom() should get the status empty',
      () async {
        when(recipesUseCase()).thenAnswer((_) async => dataStateEmpty);
        recipesController.getRecipesRandom();
        verify(recipesUseCase()).called(1);
      },
    );

    test(
      'getRecipesRandom() should get the status failed',
      () async {
        when(recipesUseCase()).thenAnswer((_) async => dataStateFailed);
        recipesController.getRecipesRandom();
        verify(recipesUseCase()).called(1);
      },
    );
  });
}