// Copyright (c) 2019-present,  SurfStudio LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:text_field_validation/src/validator/no_empty_text_field_validator.dart';
import 'package:text_field_validation/src/validator/reg_exp_validator.dart';
import 'package:text_field_validation/src/validator/text_field_multi_validator.dart';

/// Тестовый валидатор email
class EmailTextFieldValidator extends TextFieldMultiValidator {
  EmailTextFieldValidator({
    String emptyErrorText,
    String errorInvalidText,
  }) : super([
          NoEmptyTextFieldValidator(emptyErrorText),
          RegExpTextFieldValidator(errorInvalidText, _emailRegExp),
        ]);

  static final RegExp _emailRegExp =
      RegExp(r'[A-Z0-9a-z._%+\-]{1,256}@[A-Za-z0-9.\-]{1,256}\.[A-Za-z]{2,64}');
}
