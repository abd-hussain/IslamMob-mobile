import 'package:islam_app/models/rest_api/firestore_options.dart';
import 'package:islam_app/models/rest_api/report_request.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/services/general/firebase_services.dart';
import 'package:islam_app/utils/constants/firebase_constants.dart';
import 'package:islam_app/utils/mixins.dart';

class ReportService with Service {
  Future<dynamic> addNewReportOrSuggestion(
      {required ReportRequest reportData}) async {
    final url1 = await _addFileIfNotNull(reportData.attach1);
    final url2 = await _addFileIfNotNull(reportData.attach2);
    final url3 = await _addFileIfNotNull(reportData.attach3);

    await locator<FirestoreService>()
        .setFireStoreData(FireStoreOptions<ReportRequestToFirebase>(
      collectionName: FirebaseConstants.reports,
      docName: DateTime.now().toString(),
      fromModel: ReportRequestToFirebase(
        content: reportData.content,
        attach1: url1,
        attach2: url2,
        attach3: url3,
      ),
    ));
  }

  Future<String?> _addFileIfNotNull(dynamic attach) async {
    if (attach != null) {
      final String attachType = attach.path.split('.').last;
      final String fileName = '${DateTime.now().toString()}.$attachType';
      return await locator<FirestoreService>()
          .uploadFile(file: attach, fileName: fileName);
    }
    return null;
  }
}
