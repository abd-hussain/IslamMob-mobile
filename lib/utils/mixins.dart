import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/utils/repository/http_repository.dart';

mixin Service {
  final repository = locator<HttpRepository>();
}

abstract class Model<T> {
  Model();
  Map<String, dynamic> toJson();
}
