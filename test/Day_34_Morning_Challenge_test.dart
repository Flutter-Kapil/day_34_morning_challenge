import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test("isAnagram", () {
    expect(isAnagram("balooon", "balloon"), false);
    expect(isAnagram("balloon", "balloon"), true);
    expect(isAnagram("balloon", "balooon"), false);
    expect(isAnagram("baloon", "balloon"), false);
    expect(isAnagram("mad", "dam"), true);
    expect(isAnagram("fact", "actf"), true);
  });

  test("test minRemovals", () {
    expect(minRemovals("abcde", "cab"), 2);
    expect(minRemovals("cat", "bat"), 2);
    expect(minRemovals("", ""), 0);
    expect(minRemovals("meet", "met"), 1);
    expect(minRemovals("sweet", "sweat"), 2);
    expect(minRemovals('hello', 'role'), 3);
    expect(minRemovals('mississippi', 'pope'), 11);
  });

 test("test minRemovals", () {
   expect(validHamming("cat", "act") ,2);
   expect(validHamming("mood", "doom") ,2);
   expect(validHamming("listen", "silent") ,5);
   expect(validHamming("boat", "root") ,false);
 });
}
