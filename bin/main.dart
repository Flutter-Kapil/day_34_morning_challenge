// Challenge 1
// Minimum Removals to Make Two Strings Anagrams
// Create a function that returns the smallest number of letter removals so that
// two strings are anagrams of each other.
//  Examples
//  minRemovals("abcde", "cab") ➞ 2
int minRemovals(String word1, String word2) {
  int word1length = word1.length;
  int word2length = word2.length;
  if (word1length == 0 || word2length == 0) {
    return 0;
  }
  List word1List = word1.split('').toList();
  List word2List = word2.split('').toList();

  int count = 0;
  for (int i = 0; i < word1List.length; i++) {
    if (word2List.contains(word1List[i])) {
      int removeIndex =
          word2List.indexWhere((element) => element == (word1List[i]));
      word2List.removeAt(removeIndex);
    } else {
      count++;
    }
  }
  return count + word2List.length;
}

// Challenge 2
// Farthest Hamming Anagrams
// The Hamming distance between two strings is the number of positions at which
// they differ. Hamming distances can only be calculated for strings of equal length.

/// String s1 = "eleven"
/// String s2 = "twelve"
/// They only have the third position (index 2) in common, giving them a Hamming
/// distance of 5.
/// As anagrams are of identical length, the Hamming distance between them can be
/// calculated.
// String s1 = "read"
// String s2 = "dear"
// These strings differ at the first and last positions, giving them a Hamming distance of 2.

/// Create a function that takes two strings, and returns:
// - true if they are anagrams of each other and their Hamming distance is equal to
//  their length (i.e. no letters in the same positions).
// - false if they aren't anagrams, or
// - Their Hamming distance if they are anagrams with >=1 letter at the same index.

dynamic ex3(String s1, String s2) {
  //lets calculate hamming distance first
  int hammingDistance = 0;
  for (int i = 0; i < s1.length; i++) {
    if (s1[i] == s2[i]) {
      hammingDistance++;
    }
  }
// - true if they are anagrams of each other and their Hamming distance is equal to
//  their length (i.e. no letters in the same positions).
  if (isAnagram(s1, s2) && hammingDistance == s1.length) {
    return true;
  }
// - false if they aren't anagrams, or
  if (!isAnagram(s1, s2)) {
    return false;
  }
// Their Hamming distance if they are anagrams with >=1 letter at the same index.
  if (isAnagram(s1, s2) && hammingDistance < s1.length) {
    return hammingDistance;
  }
}

bool isAnagram(String word1, String word2) {
  if (word1.length != word2.length) {
    return false;
  }
  List word1List = word1.split('').toList();
  List word2List = word2.split('').toList();
  //balooon balloon
  for (var item in word1List) {
    if (!word2List.remove(item)) {
      return false;
    }
  }
  return true;
}

main() {
  print(ex3('read', 'read'));
}
