// Mocks generated by Mockito 5.3.2 from annotations
// in spoonacular/test/unit_test/detail_page/ingredients_controller_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:spoonacular/src/core/resource/data_state.dart' as _i3;
import 'package:spoonacular/src/domain/entity/ingredients/ingredients_list_entity.dart'
    as _i6;
import 'package:spoonacular/src/domain/repository/repository_interface.dart'
    as _i2;
import 'package:spoonacular/src/domain/use_case/implementation/ingredients_use_case.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRepositoryInterface_0 extends _i1.SmartFake
    implements _i2.RepositoryInterface {
  _FakeRepositoryInterface_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDataState_1<T> extends _i1.SmartFake implements _i3.DataState<T> {
  _FakeDataState_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IngredientsUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockIngredientsUseCase extends _i1.Mock
    implements _i4.IngredientsUseCase {
  MockIngredientsUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RepositoryInterface get ingredientsRepository => (super.noSuchMethod(
        Invocation.getter(#ingredientsRepository),
        returnValue: _FakeRepositoryInterface_0(
          this,
          Invocation.getter(#ingredientsRepository),
        ),
      ) as _i2.RepositoryInterface);
  @override
  set ingredientsRepository(_i2.RepositoryInterface? _ingredientsRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #ingredientsRepository,
          _ingredientsRepository,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<_i3.DataState<_i6.IngredientsListEntity>> call({int? id = 0}) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#id: id},
        ),
        returnValue: _i5.Future<_i3.DataState<_i6.IngredientsListEntity>>.value(
            _FakeDataState_1<_i6.IngredientsListEntity>(
          this,
          Invocation.method(
            #call,
            [],
            {#id: id},
          ),
        )),
      ) as _i5.Future<_i3.DataState<_i6.IngredientsListEntity>>);
}