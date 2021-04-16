import std.stdio : writeln;
import std.random : uniform;

void randomCalculator() {
  auto add(int lhs, int rhs) {
    return lhs + rhs;
  }
  auto sub(int lhs, int rhs) {
    return lhs - rhs;
  }
  auto mul(int lhs, int rhs) {
    return lhs * rhs;
  }
  auto div(int lhs, int rhs) {
    return lhs / rhs;
  }

  int a = 10;
  int b = 5;

  switch (uniform(0, 4)) {
  case 0:
    writeln(add(a, b));
    break;
  case 1:
    writeln(sub(a, b));
    break;
  case 2:
    writeln(mul(a, b));
    break;
  case 3:
    writeln(div(a, b));
    break;
  default:
    assert(0);
    break;
  }
}

// default argument
void defaultArgs(string msg, string color = "red") {
  writeln(msg, " ", color);
}

// closure
void closure() {
  int local = 10;
  void printLocal() {
    writeln(local);
  }
  printLocal();
}

void main() {
  randomCalculator();
  static assert(!__traits(compiles, add(1, 2)));

  defaultArgs("D rocks");
  defaultArgs("D rocks", "blue");

  closure();
}
