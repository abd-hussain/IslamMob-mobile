import 'package:islam_mob_adhan/adhan.dart';
import 'package:test/test.dart';

void main() {
  test('Test Madhab Equality Support', () {
    const hanafiMadhab1 = Madhab.hanafi;
    const hanafiMadhab2 = Madhab.hanafi;
    const shafiMadhab1 = Madhab.shafi;

    expect(hanafiMadhab1 == hanafiMadhab2, isTrue);
    expect(hanafiMadhab1 == shafiMadhab1, isFalse);
  });
}
