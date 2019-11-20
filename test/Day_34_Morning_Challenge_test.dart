import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test("test minRemovals", () {
    expect(minRemovals("abcde", "cab") ,2);
    expect(minRemovals("cat", "bat") ,1);
    expect(minRemovals("", "") ,0);
    expect(minRemovals("meet", "met") ,1);
    expect(minRemovals("sweet", "sweat") ,2);
  });


//  test("test minRemovals", () {
//    expect(hamming("cat", "act") ,2);
//    expect(hamming("mood", "doom") ,2);
//    expect(hamming("listen", "silent") ,5);
//    expect(hamming("boat", "root") ,false);
//  });
}

