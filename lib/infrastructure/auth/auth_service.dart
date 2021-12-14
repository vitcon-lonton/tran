/* spell-checker: disable */
part of 'auth.dart';

@RestApi(baseUrl: baseUrl)
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/signupUser')
  Future<BaseResponse<Credential>> register(@Body() RegisterData data);

  @POST('/login')
  Future<BaseResponse<Credential>> emailAuth(@Body() EmailAuthData data);

  @POST('/FacebookAuth')
  Future<BaseResponse<Credential>> facebookAuth(@Body() FBAuthData data);

  @POST('/AppleAuthentication')
  Future<BaseResponse<Credential>> appleAuth(@Body() AppleAuthData data);

  @POST('/GoogleAuth')
  Future<BaseResponse<Credential>> googleAuth(@Body() GoogleAuthData data);

  @POST('/changePassword')
  Future<BaseResponse<dynamic>> changePassword(@Body() ChangePasswordData data);
}
