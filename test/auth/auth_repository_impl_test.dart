import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tranme/domain/core/value_objects.dart';
import 'package:tranme/infrastructure/auth/auth.dart';
import 'package:tranme/infrastructure/core/core.dart';

class MockAuthService extends Mock implements AuthService {}

class MockEmailAuhData extends Mock implements EmailAuthData {}

void main() {
  late AuthFacade authFacade;
  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
    authFacade = AuthFacade(authService: mockAuthService);
  });

  group("login", () {
    final email = Email('email2@tranme.com');
    final password = Password('password');
    final params = MockEmailAuhData();
    final response = BaseResponse<Credential>(
        responseCode: 2000,
        responseData: Credential(id: ''),
        responseMessage: '');

    test(
        "should return todo data when the call to local data source is success",
        () async {
      // arrange
      when(mockAuthService.emailAuth(params)).thenAnswer((_) async => response);
      // act
      final res = await authFacade.emailAuth(email: email, password: password);
      // assert
      verify(mockAuthService.emailAuth(params));
      expect(res, Right(unit));
    });

    // test("should return Database failure when call to database is unsuccessful",
    //     () async {
    //   // arrange
    //   when(mockLocalDataSource.getTodo(any)).thenThrow(DataBaseException());
    //   // act
    //   final result = await todoRepositoryImpl.getTodo(tId);
    //   // assert
    //   verify(mockLocalDataSource.getTodo(tId));
    //   expect(result, Left(DataBaseFailure()));
    // });
  });
}
