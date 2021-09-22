import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:tranme/domain/auth/auth.dart';
import 'package:tranme/domain/core/value_objects.dart';
import 'package:tranme/infrastructure/core/core.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';
part 'auth_dto.dart';
part 'auth_repository.dart';
part 'auth_service.dart';
