class SimpleTime {
  int hours;
  int minutes;
  int seconds;
  int nanoseconds;

  // Constructor with default values
  SimpleTime({
    this.hours = 0,
    this.minutes = 0,
    this.seconds = 0,
    this.nanoseconds = 0,
  });

  // Function to calculate seconds from start of day
  int toSecondOfDay() {
    return hours * 3600 + minutes * 60 + seconds;
  }

  // Function to calculate nanoseconds from start of day
  int toNanoOfDay() {
    int totalSeconds = toSecondOfDay();
    return totalSeconds * 1000000000 + nanoseconds;
  }
}
void main() {
  var noon = SimpleTime(hours: 12);
  print(noon.toSecondOfDay()); // 12 * 3600 = 43200

  var halfPastSeven = SimpleTime(hours: 6, minutes: 30);
  print(halfPastSeven.toNanoOfDay()); // (6*3600 + 30*60) * 1,000,000,000

  var nanosecond = SimpleTime(nanoseconds: 1);
  print(nanosecond.toNanoOfDay()); // = 1

  var second = SimpleTime(seconds: 1);
  print(second.toNanoOfDay()); // = 1,000,000,000
}
