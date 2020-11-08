import 'package:flutter_translation/flutter_translation.dart';

import 'package:movies_app/common/app_translations/en_translator.dart';
import 'package:movies_app/common/app_translations/pt_translator.dart';

class AppLanguages extends ILanguages {
  AppLanguages.singleton();

  @override
  LanguageEntity get defaultLanguage => this.findByCode('pt');

  @override
  List<LanguageEntity> createLanguages() {
    return [
      const LanguageEntity(
        code: 'pt',
        name: 'Português',
        translator: const PtTranslator(),
      ),
      const LanguageEntity(
        code: 'en',
        name: 'English',
        translator: const EnTranslator(),
      ),
    ];
  }
}
