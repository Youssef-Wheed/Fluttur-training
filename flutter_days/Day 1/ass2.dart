void main() {
  int w = 10, sum = 0 , k = 10 , n = 100;

  for (int i = 1; i <= w; i++) {
    sum += i;
  }

  int total_cost = k * sum;
  int borrowed = total_cost - n;
  print("Total cost: $total_cost");
  print("Borrowed : $borrowed");
}
