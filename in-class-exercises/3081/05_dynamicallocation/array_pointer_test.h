#include "duck.h"

#define MAX_DUCK_COUNT 10

class ArrayPointerTest {
public:
  ArrayPointerTest(int size=MAX_DUCK_COUNT);
  ~ArrayPointerTest();
  void DisplayContents();

private:
  Duck ducks1_[MAX_DUCK_COUNT];
  Duck * ducks2_;
  Duck * ducks3_[MAX_DUCK_COUNT];
  Duck ** ducks4_;
  int size_;
};
