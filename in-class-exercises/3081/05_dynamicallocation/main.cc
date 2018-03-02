#include "array_pointer_test.h"

void helper() {
  printf("initializing all my ducks\n");
  ArrayPointerTest ducks(3);
  ducks.DisplayContents();
  printf("About to delete all my ducks\n");
}

int main(void) {
	printf("duck size %d\n", sizeof(Duck));
  helper();
  return 0;
}
