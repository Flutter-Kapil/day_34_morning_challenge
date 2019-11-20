// Challenge 1
// Minimum Removals to Make Two Strings Anagrams
// Create a function that returns the smallest number of letter removals so that
// two strings are anagrams of each other.
//  Examples
//  minRemovals("abcde", "cab") ➞ 2
  int minRemovals(String word1, String word2){
  List word1List = word1.split('').toList();
//  word1List.sort();
  List word2List = word2.split('').toList();
//  word2List.sort();
  print(word1List);
  print(word2List);
//  int count =0;
  if(word1List.length>word2List.length){
    word1List.removeWhere((item)=>word2List.contains(item));
    return word1List.length;
  }else{
    word2List.removeWhere((item)=>word1List.contains(item));
    return word2List.length;
  }
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
bool isAnagram(String word1, String word2){
  if(word1.length!=word2.length){
    return false;
  }
  List word1List = word1.split('').toList();
  List word2List = word2.split('').toList();
  //balooon balloon
  for(var item in word1List){
    if(!word2List.remove(item)){
      return false;
    }
  }
  return true;
}
main() {
  List a= [2,3,4];
 print(minRemovals("sweet", "sweat"));
  print(a.remove(5));
}
