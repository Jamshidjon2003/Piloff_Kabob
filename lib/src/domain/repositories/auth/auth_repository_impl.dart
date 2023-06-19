part of 'auth_repository.dart';

final class AuthRepositoryImpl extends AuthRepository {
  final ApiClient apiClient;
  final NetworkInfo networkInfo;

  const AuthRepositoryImpl({
    required this.apiClient,
    required this.networkInfo,
  }) : super();

  @override
  Future<Either<Failure, PhoneResponse>> phone({
    required PhoneRequest request,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _phone(request: request);
        return Right(response);
      } catch (e) {
        return Left(
          ServerFailure(
            message: e is ServerError ? e.message : e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(message: 'No Internet Connection'));
    }
  }

  Future<PhoneResponse> _phone({
    required PhoneRequest request,
  }) async {
    late PhoneResponse response;
    try {
      response = await apiClient.phone(request);

    } on DioError catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withDioError(error: error);
    } on SocketException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    } catch (error, stacktrace) {
      if (error is TypeError) {
        log('Type Error: $error stacktrace: $stacktrace');
        throw ServerError.withError(message: error.toString());
      }
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    }
    return response;
  }

  @override
  Future<Either<Failure, LoginResponse>> login({
    required LoginRequest request,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _login(request: request);
        return Right(response);
      } catch (e) {
        return Left(
          ServerFailure(
            message: e is ServerError ? e.message : e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(message: 'No Internet Connection'));
    }
  }

  Future<LoginResponse> _login({
    required LoginRequest request,
  }) async {
    late LoginResponse response;
    try {
      response = await apiClient.login(request);
    } on DioError catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withDioError(error: error);
    } on SocketException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    } catch (error, stacktrace) {
      if (error is TypeError) {
        log('Type Error: $error stacktrace: $stacktrace');
        throw ServerError.withError(message: error.toString());
      }
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    }
    return response;
  }
  @override
  Future<Either<Failure, ConfirmResponse>> confirmlogin({
    required ConfirmRequest request,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _confirmlogin(request: request);
        return Right(response);
      } catch (e) {
        return Left(
          ServerFailure(
            message: e is ServerError ? e.message : e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(message: 'No Internet Connection'));
    }
  }

  Future<ConfirmResponse> _confirmlogin({
    required ConfirmRequest request,
  }) async {
    late ConfirmResponse response;
    try {
      response = await apiClient.confirmlogin(request);
    } on DioError catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withDioError(error: error);
    } on SocketException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    } catch (error, stacktrace) {
      if (error is TypeError) {
        log('Type Error: $error stacktrace: $stacktrace');
        throw ServerError.withError(message: error.toString());
      }
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    }
    return response;
  }

  @override
  Future<Either<Failure, RegisterResponse>> registerlog({
    required RegisterRequest request,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _registerlog(request: request);
        return Right(response);
      } catch (e) {
        return Left(
          ServerFailure(
            message: e is ServerError ? e.message : e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(message: 'No Internet Connection'));
    }
  }

  Future<RegisterResponse> _registerlog({
    required RegisterRequest request,
  }) async {
    late RegisterResponse response;
    try {
      response = await apiClient.registerlog(request);
    } on DioError catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withDioError(error: error);
    } on SocketException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    } catch (error, stacktrace) {
      if (error is TypeError) {
        log('Type Error: $error stacktrace: $stacktrace');
        throw ServerError.withError(message: error.toString());
      }
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    }
    return response;
  }

  @override
  Future<Either<Failure, ConfirmResponse>> registerConfirm({
    required ConfirmRequest request,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _registerConfirm(request: request);
        return Right(response);
      } catch (e) {
        return Left(
          ServerFailure(
            message: e is ServerError ? e.message : e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(message: 'No Internet Connection'));
    }
  }

  Future<ConfirmResponse> _registerConfirm({
    required ConfirmRequest request,
  }) async {
    late ConfirmResponse response;
    try {
      response = await apiClient.registerConfirm(request);
    } on DioError catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withDioError(error: error);
    } on SocketException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    } catch (error, stacktrace) {
      if (error is TypeError) {
        log('Type Error: $error stacktrace: $stacktrace');
        throw ServerError.withError(message: error.toString());
      }
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    }
    return response;
  }

  @override
  Future<Either<Failure, BannerResponse>> banner() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _banner();
        return Right(response);
      } catch (e) {
        return Left(
          ServerFailure(
            message: e is ServerError ? e.message : e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(message: 'No Internet Connection'));
    }
  }
  Future<BannerResponse> _banner() async {
    late BannerResponse response;
    try {
      response = await apiClient.banner();
    } on DioError catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withDioError(error: error);
    } on SocketException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    } catch (error, stacktrace) {
      if (error is TypeError) {
        log('Type Error: $error stacktrace: $stacktrace');
        throw ServerError.withError(message: error.toString());
      }
      log('Exception occurred: $error stacktrace: $stacktrace');
      throw ServerError.withError(message: error.toString());
    }
    return response;
  }
}
