import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tranme/domain/auth/auth.dart';
import 'package:tranme/domain/core/entities.dart';
import 'package:tranme/domain/core/value_objects.dart';
import 'package:tranme/injection.dart';

import 'package:tranme/presentation/theme/theme.dart';
import 'package:tranme/routes.dart';

part 'buttons.dart';
part 'sign_in.freezed.dart';
part 'sign_in_cubit.dart';
part 'sign_in_form.dart';
part 'sign_in_page.dart';
