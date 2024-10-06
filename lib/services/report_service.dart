import 'package:islam_app/models/rest_api/firestore_options.dart';
import 'package:islam_app/models/rest_api/report_request.dart';
import 'package:islam_app/services/general/firebase_services.dart';
import 'package:islam_app/utils/constants/firebase_constants.dart';
import 'package:islam_app/utils/mixins.dart';

class ReportService with Service {
  Future<dynamic> addNewReportOrSuggestion(
      {required ReportRequest reportData}) async {
    Future<String?> addFileIfNotNull(dynamic attach) async {
      if (attach != null) {
        final String fileName = attach.path.split('/').last;
        return await FirestoreService()
            .uploadFile(file: attach, fileName: fileName);
      }
      return null;
    }

    final url1 = await addFileIfNotNull(reportData.attach1);
    final url2 = await addFileIfNotNull(reportData.attach2);
    final url3 = await addFileIfNotNull(reportData.attach3);

    await FirestoreService()
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
}
