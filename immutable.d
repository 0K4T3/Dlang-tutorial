import std.stdio : writeln;

void main() {
  // mutable variable (default)
  int m = 100; // mutable
  writeln("m: ", typeof(m).stringof);
  m = 10; // ok

  // mutable pointer
  const int* cm = &m;
  writeln("cm: ", typeof(cm).stringof);

  // immutable variable
  immutable v = 100;
  writeln("v: ", typeof(v).stringof);
  // v = 5; <- error
}
