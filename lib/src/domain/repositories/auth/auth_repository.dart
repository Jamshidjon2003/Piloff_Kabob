import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ploff_final/src/core/platform/network_info.dart';
import 'package:ploff_final/src/data/models/auth/confirm_request.dart';
import 'package:ploff_final/src/data/models/auth/confirm_response.dart';
import 'package:ploff_final/src/data/models/auth/login_request.dart';
import 'package:ploff_final/src/data/models/auth/login_response.dart';
import 'package:ploff_final/src/data/models/auth/phone_request.dart';
import 'package:ploff_final/src/data/models/auth/phone_response.dart';
import 'package:ploff_final/src/data/models/auth/register_request.dart';
import 'package:ploff_final/src/data/models/auth/register_response.dart';
import 'package:ploff_final/src/data/models/home/banner_response.dart';
import 'package:ploff_final/src/domain/network/api_client.dart';
import 'package:ploff_final/src/domain/network/failure.dart';
import 'package:ploff_final/src/domain/network/server_error.dart';

part 'auth_repository_impl.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<Either<Failure, PhoneResponse>> phone({
    required PhoneRequest request,
  });

  Future<Either<Failure, LoginResponse>> login({
    required LoginRequest request,
  });

  Future<Either<Failure, ConfirmResponse>> confirmlogin({
    required ConfirmRequest request,
  });

  Future<Either<Failure, RegisterResponse>> registerlog({
    required RegisterRequest request,
  });

  Future<Either<Failure, ConfirmResponse>> registerConfirm({
    required ConfirmRequest request,
  });

  Future<Either<Failure, BannerResponse>> banner();

}
