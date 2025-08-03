void main() {
  String exp = "";

  for (int i = 0; i < 10; i++) {
    print("Output : $i");
    exp = "";
    for (int j = 0; j <= i; j++) {
      if (j % 2 == 0) {
        exp += "I Hate";
      } else {
        exp += "I Love";
      }
      if (j < i) {
        exp += " that ";
      }
    }
    print("$exp it");
  }
}
