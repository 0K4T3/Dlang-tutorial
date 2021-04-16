import std.stdio : writeln;

char[] encrypt(char[] input, char shift) {
  auto result = input.dup;
  result[] -= 'a';
  result[] += shift;
  result[] %= 26;
  result[] += 'a';
  return result;
}

void main() {
  // static size
  int[8] staticArr;

  // dynamic size (allocated to heap)
  int size = 8;
  int[] dynamicArr = new int[size];

  // manipulation
  int[] arr = [1, 2, 3];
  arr[] *= 2;
  assert(arr == [2, 4, 6]);

  char[] toBeEncrypted = ['w', 'e', 'l', 'c', 'o', 'm', 'e', 't', 'o', 'd'];
  writeln("before: ", toBeEncrypted);
  auto encrypted = encrypt(toBeEncrypted, 16);
  writeln("after: ", encrypted);

  assert(encrypted == ['m', 'u', 'b', 's', 'e', 'c', 'u', 'j', 'e', 't']);
}
