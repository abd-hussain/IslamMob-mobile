import 'package:dio/dio.dart';
import 'package:islam_app/models/rest_api/report_request.dart';
import 'package:islam_app/utils/mixins.dart';

class ReportService with Service {
  Future<dynamic> addNewReportOrSuggestion(
      {required ReportRequest reportData}) async {
    final FormData formData = FormData();
    formData.fields.add(MapEntry("content", reportData.content));

    void addFileIfNotNull(String fieldName, dynamic attach) {
      if (attach != null) {
        final String fileName = attach.path.split('/').last;
        formData.files.add(
          MapEntry(
            fieldName,
            MultipartFile.fromFileSync(
              attach.path,
              filename: fileName,
            ),
          ),
        );
      }
    }

    addFileIfNotNull("attach1", reportData.attach1);
    addFileIfNotNull("attach2", reportData.attach2);
    addFileIfNotNull("attach3", reportData.attach3);

    //TODO
    // return repository.callRequest(
    //   requestType: RequestType.post,
    //   methodName: MethodNameConstant.reportSuggestion,
    //   formData: formData,
    // );
  }
}
