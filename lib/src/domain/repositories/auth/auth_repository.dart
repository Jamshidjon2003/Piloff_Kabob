import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ploffe_kebab/src/core/platform/network_info.dart';
import 'package:ploffe_kebab/src/data/models/auth/send_message_request.dart';
import 'package:ploffe_kebab/src/data/models/auth/send_message_response.dart';
import 'package:ploffe_kebab/src/data/models/auth/verify_request.dart';
import 'package:ploffe_kebab/src/domain/network/api_client.dart';
import 'package:ploffe_kebab/src/domain/network/failure.dart';
import 'package:ploffe_kebab/src/domain/network/server_error.dart';

part 'auth_repository_impl.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<Either<Failure, SendMessageResponse>> codeMessage({
    required SendMessageRequest request,
  });

  Future<Either<Failure, SendMessageResponse>> verifySmsCode({
    required VerifyRequest request,
    required String smsId,
    required String otp,
  });
}