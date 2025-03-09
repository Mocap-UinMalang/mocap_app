import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';



 /**
  * Note:
  * - Right => Package Dartz
  * - Mock => Package mochinto
  * - MockLoginUser => class turunan dari Mock, dan bagian (implementasi) dari LoginUser
  * - User => data/model
  * - LoginModel => domain/entities
  * - LoginUser => data/source
  * - LoginrepositoryImpl => data/repositories
  */


// Classs Mock
/**
 * Example:
 * class MockLoginUser extends Mock implements LoginUser {}
 */

 void main(){
  // Pemanggilan Class mock dan Clas repo
  /**
   * Example:
   * - MockLoginUser mockLoginUser;
   * - LoginRepositoryImpl loginRepositoryImpl;
   */


  setUp((){
    // inisialisasi mock  dan repo
    /**
     * Example:
     * - mockLoginUser = MockLoginUser();
     * - loginRepositoryImpl = LoginRepositoryImpl(loginUser: mockLoginUser);
     */
  });


  group('Login User', () {


    // Object Login untuk testing pemanggilan
    /**
     * Example: final tLogin = LoginUser(username: 'username' password: 'password');
    */

    // Object Login Untuk testing login berhasil
    /**
     *  Example:
     * final tLoginSuccess = LoginUser(username: 'username', password: 'password');
    */

    // Object Login Untuk testing login gagal
    /**
     * Example:
     * final tLoginFailed = LoginUser(username: 'username',password: 'password');
    */


    // Testing untuk pemanggilan User
    test('Pemanggilan Data', () {
        // Given
        /**
         * Example:
         * - when(mockLoginUser.loginUser(tLogin))
            .thenAnswer((_) async => Right(tLoginSuccess));
         */

        // when
        /**
         * Example:
         * - loginRepositoryImpl.loginUser(tLogin);
         */

        // then
        /**
         * Example :
         * - verify(mockLoginUser.login(tLogin));
         */
    });

    // testing untuk jika Login berhasil
    test('Login Berhasil', () {
        // Give
        /**
         * Example:
         * - when(mockLoginUser.login(tLoginCorrect)).theAnswer((_) async => user)
         */

        // when
        /**
         * Example:
         * - final result = authRepositoryImpl.login(tLoginCorrect)
         */

        // then
        /**
         * Example:
         * - expect(result, Right(true));
         */


    });

    // testing untuk jika Login gagal
    test('Login Gagal', () {
        // Given
        /**
         * Example:
         * - when(mockLoginuser.logi(tLoginFailed)).theAnswer((_) => async => null);
         */

        // When
        /**
         * Example:
         * final resutl =  await loginRepositoryImpl.login(tLoginFailed);
         */

        // Then
        /**
         * Example:
         * expect(result, Right(false));
         */

    });
  });
 }
