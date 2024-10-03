void main() {
  // Örnek 1
  List<String> strs1 = ["flower", "flow", "flight"];
  print(longestCommonPrefix(strs1)); // Çıktı: "fl"

  // Örnek 2
  List<String> strs2 = ["dog", "racecar", "car"];
  print(longestCommonPrefix(strs2)); // Çıktı: ""
}

String longestCommonPrefix(List<String> strs) {
  // Eğer dizi boşsa, boş bir string döndür
  if (strs.isEmpty) return "";

  // İlk string'i ortak prefix olarak al
  String prefix = strs[0];

  // Diğer string'lerle karşılaştır
  for (int i = 1; i < strs.length; i++) {
    // Ortak prefix'i bulmak için kontrol et
    while (strs[i].indexOf(prefix) != 0) {
      // prefix'in sonundan bir karakter kes
      prefix = prefix.substring(0, prefix.length - 1);
      // Eğer prefix boşsa, hemen döndür
      if (prefix.isEmpty) return "";
    }
  }

  // Ortak prefix'i döndür
  return prefix;
}
