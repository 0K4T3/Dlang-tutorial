import std.stdio : writeln;

void safeFun() @safe {
  writeln("Hello World");
  int* p = new int;
}

void unsafeFun() {
  int* p = new int;
  int* fiddling = p + 5;
}

void main() {
  safeFun();
  unsafeFun();
}
