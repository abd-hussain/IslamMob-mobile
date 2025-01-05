import 'dart:io';

import 'package:database_manager/database_manager.dart';
import 'package:path_provider/path_provider.dart';

class LoadFileFromDocumentUseCase {
  Future<String?> call() async {
    final printName = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse,
        defaultValue: "");
    final Directory dir = await getApplicationDocumentsDirectory();
    final filePath = Directory('${dir.path}/$printName');

    return filePath.path;
  }
}
