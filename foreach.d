import std.stdio : writeln;
import std.string : format;

void main() {
  // foreach
  int[] arr1 = [1, 2, 3];
  foreach (int e; arr1) {
    writeln("foreach: ", e);
  }

  // foreach with refs
  int[] arr2 = [2, 3, 4];
  foreach (ref e; arr2) {
    e += 1;
  }
  arr2.writeln;

  // foreach with nth
  int[] arr3 = [3, 4, 5];
  foreach (int i; 0..2) {
    writeln("foreach(with nth): ", i);
  }

  // foreach with index
  int[] arr4 = [4, 5, 6];
  foreach (size_t i, int e; arr4) {
    writeln("foreach(with index): ", format("%d, %d", i, e));
  }

  // foreach with reverse
  int[] arr5 = [5, 6, 7];
  foreach_reverse (int e; arr5) {
    writeln("foreach(with reverse): ", e);
  }
}
